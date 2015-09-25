require 'sinatra'
require 'sinatra/activerecord'
require 'haml'
require "./lib/read"

db = URI.parse('postgres://zaphod@localhost/twentyeyesdb')

ActiveRecord::Base.establish_connection(
  :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  :host     => db.host,
  :username => zaphod,
  :database => db.path[1..-1],
  :encoding => 'utf8'
)

get '/' do
  haml :posts
end

get '/about_me' do
  haml :about_me
end

get '/contact' do
  haml :contact
end

get '/posts' do
  haml :posts
end

get '/archive' do
  haml :archive
end
