require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require 'haml'
require_relative '../twentyeyes_api/lib/read'

class Post < ActiveRecord::Base
end

class App < Sinatra::Base

  before do
    content_type :json
  end

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

  get '/posts_new/?' do
    @posts = Post.all
    @posts.to_json
  end

  get 'post/:post_id/?' do
    @post = Post.find_by_id(params[:post_id])
    @post.to_json
  end
end
end
