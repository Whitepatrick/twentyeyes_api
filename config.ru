#\ -w -p 8567
#app.rb
require 'sinatra'
require_relative 'lib/crud_reqs'

#set :environment, :production
#set :port, 80

run Sinatra::Application
