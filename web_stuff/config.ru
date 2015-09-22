#\ -w -p 80
#app.rb
require 'sinatra'
require './lib/crud_reqs.rb'

set :environment, :production
set :port, 80

run Sinatra::Application
