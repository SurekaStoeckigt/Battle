require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "hello there!"
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
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
 end

get '/random-cat' do
   @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
   p params[:name]
   @cat_name = params[:name]
  erb :index
end

get '/form' do
  erb :form
end
