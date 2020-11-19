#external
require 'sinatra/base'
require 'pg'
#internal
require './lib/peep'

class App < Sinatra::Base

	conn = PG.connect( dbname: 'chitter', port: '5433' )

	get '/' do
		erb :index
	end

	post '/peeps' do
		text = params['text']
	end

	run! if app_file == $0
end 
