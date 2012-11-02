require 'sinatra'

class App < Sinatra::Application
	get '/' do
		"333 My Sinatra App is Deployed"
	end
end
