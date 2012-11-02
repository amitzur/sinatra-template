require 'sinatra'

class App < Sinatra::Application
	get '/' do
		"222 My Sinatra App is Deployed"
	end
end
