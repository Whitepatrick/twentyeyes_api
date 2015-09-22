#encoding: utf-8
require_relative 'crud_reqs'

class Creator

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'pwhite')
  end

  def insert_post(title, post)
    @pg_connection.prepare('statement1', 'INSERT INTO web.posts (title, post) values ($1, $2)')
    @pg_connection.exec_prepared('statement1', [title, post])
    puts "Successfully inserted post titled '#{title}' into twentyeyesdb.web.posts"
  end

  def insert_image(image, caption)
    @pg_connection.prepare('statement1', 'INSERT INTO web.images (image, caption) values ($1, $2)')
    @pg_connection.exec_prepared('statement1', [image, caption])
  end

end
