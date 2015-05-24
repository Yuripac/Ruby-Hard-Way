require 'sinatra'
require './lib/gothonweb/map.rb'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"
enable :sessions

get '/' do 
	session[:room] = 'START'
	redirect to('/game')
end

get '/game' do
	room = Map::load_room(session)

	if room
		erb :show_room, :locals => {:room => room}
	else
		redirect to('/')
	end
end

post '/game' do
	room = Map::load_room(session)
	action = params[:action]
	
	next_room = room.go(action) || room.go('*')

	if next_room
		Map::save_room(session, next_room)
		
		if next_room.name == 'death'
			return erb :you_died, :locals => {:room => next_room}
		end
	end

	redirect to('/game')
end