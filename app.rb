require 'sinatra'

class App < Sinatra::Application
	get '/'
		"My Sinatra App is Deployed"
	end
end
