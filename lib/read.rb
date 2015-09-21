require_relative 'crud_reqs'

class Reader
  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end
  def get_last_post(column, value)
    @pg_connection.exec_params(%q{SELECT $1 FROM web.posts WHERE title = 'TEST POST';})
  end
end
