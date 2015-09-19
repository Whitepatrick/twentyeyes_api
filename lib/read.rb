require 'pg'

class Reader
  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end
  def get_posts
    @pg_connection.send_query("SELECT * FROM web.posts ;")
    @pg_connection.set_single_row_mode
    @pg_connection.get_result
  end
end
