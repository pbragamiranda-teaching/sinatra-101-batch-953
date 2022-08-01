require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"
require_relative "config/application"

get "/" do
  "landing page!"
end

get "/restaurants" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  @restaurant = Restaurant.find(params["id"])
  erb :show
end
