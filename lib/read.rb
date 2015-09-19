require 'pg'

class Reader

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end

  def get_current()
    @pg_connection.set_single_row_mode
    @pg_connection.send_query("SELECT * FROM web.posts WHERE current_or_nah = 'true';")
    @pg_connection.get_result
  end

  def get_older()
    @pg_connection.set_single_row_mode
    @pg_connection.send_query("SELECT * FROM web.posts WHERE current_or_nah = 'false' ORDER BY post_id DESC;")
    @pg_connection.get_result
  end
end

reader = Reader.new
reader.get_current.each_row do |row|
  p row["title", "post"]
end
