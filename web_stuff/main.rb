require 'rubygems'
require 'sinatra'
require 'haml'

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