require_relative 'crud_reqs'

class Reader
  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end
  def get_last_post(post_id)
    @pg_connection.prepare('statement1' 'SELECT * FROM web.posts WHERE post_id = $1;')
    @pg_connection.exec_prepared('statement1', [post_id])
    @pg_connection.set_single_row_mode
    @pg_connection.stream_each_row do |tuple|
      return tuple
    end
  end
end
