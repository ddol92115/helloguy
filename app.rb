require 'sinatra'
require File.join(File.dirname(__FILE__),'model')
get "/hi" do
	erb :index
end

post "/create" do
#user = User.new :name => params[:name],:password => params[:password],:created_at => Time.now  
#user.save  
     "Hey #{params[:name]}!"
end

not_found do
	halt 404, 'page not found'
end

