require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end
# "/restaurants/35"
# params = { id: "35"}

post "/restaurants" do
  name = params[:name]
  city = params[:city]
  restaurant = Restaurant.new(name: name, city: city)
  restaurant.save
  redirect "/"
end
# post form to "/restaurants"
# params = { name: "Banana", city: "Montevideo"}


# TODO's
# As a user I can list all the restaurants ✅
# As a user I can see one restaurant's details
# As a user I can add a restaurant