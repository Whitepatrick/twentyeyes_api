require_relative 'searcher'
require 'dbi'
require 'json'
require 'pg'
require 'csv'

pg_conn = PG::Connection.new( :dbname => 'DEV')
s = Searcher.new("#lol")

tweets_table = pg_conn.exec("SELECT * FROM tweets;")

tweets_table.each do |i|
  p i
  puts "\n"
  sleep(1.25)
end
