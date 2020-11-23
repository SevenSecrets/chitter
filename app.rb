#external
require 'sinatra/base'
require 'pg'
#internal
require './lib/cheet'

class App < Sinatra::Base

	conn = PG.connect( dbname: 'chitter', port: '5433' )

	get '/' do
		erb :index
	end

	post '/cheets' do
		text = params['text']
		redirect('/')
	end

	run! if app_file == $0
end 
