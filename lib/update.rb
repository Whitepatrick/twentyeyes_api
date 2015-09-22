require_relative 'crud_reqs'

class Updater

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'pwhite')
  end

  def update_post(new_title, new_post, title)
    params = [new_title, new_post, title]
    sql = "UPDATE web.posts SET title = $1, post = $2 WHERE title = $3;"
    @pg_connection.exec_params("#{sql}", params)
    puts "Updated post [TITLE]:#{new_title}"
  end

  def update_image(new_image, new_caption, image_id)
    @pg_connection.exec_params(%q{UPDATE web.images SET image = $1, caption = $2 WHERE image_id = $3}, [new_image, new_caption])
    puts "Updated IMAGE [TITLE]:#{caption}"
  end

end
