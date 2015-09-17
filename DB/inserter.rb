require_relative 'searcher'
require 'pg'

pg_conn = PG::Connection.new( :dbname => 'DEV')
s = Searcher.new("@operations_ivy")


pg_conn.prepare('statement1', 'insert into tweets (id, user_name, user_screen_name, tweet_text) values ($1, $2, $3, $4)')

s.twitter_search.take(50).each do |tweet|
  pg_conn.exec_prepared('statement1', [tweet.user.id.to_i, tweet.user.name, tweet.user.screen_name, tweet.text ])
  p "Now inserting #{tweet.user.id.to_i} #{tweet.user.name}, #{tweet.user.screen_name}, #{tweet.text} into tweets table"
  puts "\n"
  sleep(1.5)
end
