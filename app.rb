require 'sinatra/base'
require './lib/peep'

class App < Sinatra::Base

	@peeps = Array.new

	get '/' do
		erb :index
	end

	post '/peeps' do
		text = params['text']
		@peeps.push(Peep.new(text))
		redirect '/'
	end

	run! if app_file == $0
end 
