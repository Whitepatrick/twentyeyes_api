require 'pg'

class Executor

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'pwhite')
  end

  def execute_statment(sql_statment)
    @pg_connection.prepare('statement1', sql_statment)
    @pg_connection.exec_prepared('statement1')
  end
end


s = Executor.new.execute_statment("SELECT * FROM web.posts;")

s.each_row do |val|
  p val
  sleep(2)
end
