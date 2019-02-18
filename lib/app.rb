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

get '/cat' do
   @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
