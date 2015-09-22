require_relative 'crud_reqs'

class Reader
  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end
  def get_post(title)
    @pg_connection.exec(%q{SELECT * FROM web.posts WHERE title = $1;}, [title])
  end
end
