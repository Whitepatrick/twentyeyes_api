require_relative 'crud_reqs'

class Reader
  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end
  def get_posts(column, value)
    @pg_connection.exec_params(%q{SELECT * FROM web.posts WHERE $1 LIKE max(SELECT);}, [column, value])
  end
end
