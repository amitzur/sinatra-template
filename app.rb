require 'sinatra'

class App < Sinatra::Application
	get '/' do
		"My Sinatra App is Deployed"
	end
end
