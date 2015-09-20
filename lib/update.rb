require_relative 'crud_reqs'

class Updater

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end

  def update_post(new_title, new_post, post_id)
    @pg_connection.exec_params(%q{UPDATE web.posts SET title = $1, post = $2 WHERE post_id = $3}, [new_title, new_post, post_id])
    puts "Updated post titled '#{new_title}' in twentyeyesdb.web.posts"
  end

  def update_image(new_image, new_caption, image_id)
    @pg_connection.exec_params(%q{UPDATE web.images SET image = $1, caption = $2 WHERE image_id = $3}, [new_image, new_caption, post_id])
    puts "Updated image '#{new_caption}' in twentyeyesdb.web.images"
  end

end
