#\ -w -p 80
require 'sinatra'
require './main'

set :environment, :production
set :port, 80

run Sinatra::Application
