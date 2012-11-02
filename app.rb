require 'sinatra'

class App < Sinatra::Application
	get '/' do
		"111 My Sinatra App is Deployed"
	end
end
