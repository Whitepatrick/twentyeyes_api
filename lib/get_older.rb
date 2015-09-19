require 'pg'

class Reader

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end

  def exec_select()
    @pg_connection.send_query("SELECT * FROM web.posts WHERE current_or_nah = 'false' ORDER BY post_id DESC;")
    @pg_connection.set_single_row_mode
    @pg_connection.get_result.stream_each do |row|
      p "Title: #{row["title"]}"
      #p row["post"]
      puts "\n"
      sleep(0.75)
    end
  end
end

reader = Reader.new
reader.exec_select
