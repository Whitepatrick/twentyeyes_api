#encoding: utf-8
require_relative 'crud_reqs'

class Reader
  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end
  def get_post(title)
    sql = 'SELECT * FROM web.posts WHERE title = $1;'
    @pg_connection.exec_params(sql, [title])
  end
end

def update_post(new_title, new_post, title)
  params = [new_title, new_post, title]
  sql = "UPDATE web.posts SET title = $1, post = $2 WHERE title = $3;"
  @pg_connection.exec_params("#{sql}", params)
  puts "Updated post [TITLE]:#{new_title}"
end
