require_relative 'crud_reqs'

class Deleter

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end

  def delete_post(delete_this_post_id)
    @pg_connection.exec_params(%q{DELETE FROM web.posts WHERE post_id = $1}, [delete_this_post_id])
    puts "Successfully deleted post. [POST_ID:#{delete_this_post_id}]"
  end

  def delete_image(delete_this_image_id)
    @pg_connection.exec_params(%q{DELETE FROM web.posts WHERE iamge_id = $1}, [delete_this_image_id])
    puts "Successfully deleted iamge. [IMAGE_ID:#{delete_this_image_id}]"
  end

end
