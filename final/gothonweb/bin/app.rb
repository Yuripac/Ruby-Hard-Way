require 'sinatra'

	set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

#localhost:8080/
get '/' do 
	return 'Hello world'
end

#Routes are matched in the order they are defined.
#localhost:8080/hello/

get '/hello/' do
	erb :hello_form
end

#localhost:8080/hello/
post '/hello/' do
	params[:greeting] = nil if params[:greeting] == ""
	params[:name] = nil if params[:name] == ""

	greeting = params[:greeting] || "Hi There"
	name = params[:name] || "Nobody"

	# locals send the variables to the view
	erb :index, :locals => {:greeting => greeting, :name => name}
end