#encoding: utf-8
require_relative 'crud_reqs'

class Deleter

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end

  def delete_post(delete_this_post)
    @pg_connection.exec_params(%q{DELETE FROM web.posts WHERE title = $1}, [delete_this_post])
    puts "Deleted post. [TITLE:#{delete_this_post}]"
  end

  def delete_image(delete_this_image_id)
    @pg_connection.exec_params(%q{DELETE FROM web.posts WHERE iamge_id = $1}, [delete_this_image_id])
    puts "Deleted iamge. [IMAGE_ID:#{delete_this_image_id}]"
  end

end
