require 'pg'

class Reader

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end

  def get_current()
    @pg_connection.send_query("SELECT * FROM web.posts WHERE current_or_nah = 'true';")
    @pg_connection.set_single_row_mode
    @pg_connection.get_result.stream_each do |row|
      p row["title"]
    end
  end
end

reader = Reader.new
reader.exec_select
