#\ -w -p 8567
#app.rb
require "sinatra"
require "lib/crud_reqs"

run Sinatra::Application

#set :environment, :production
#set :port, 80
