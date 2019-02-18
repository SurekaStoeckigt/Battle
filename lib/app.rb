require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  "secret"
end

get '/wednesday' do
  "wednesday, just for you"
end

get '/schofield' do
  "88"
end

get '/random-cat' do
   @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
   p params[:name]
   @cat_name = params[:name]
  erb(:index)
end
