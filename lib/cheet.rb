require 'date'

class Cheet

	attr_reader :id, :text, :author

	def initialize(id:, text:, author:)
		@id = id
		@text = text
		@author = author
	end 

	def self.create(text:, author:)
		time_posted = DateTime.now

		if ENV['ENVIRONMENT'] == 'test'
			conn = PG.connect( dbname: 'chitter_test', port: '5433' )
		else 
			conn = PG.connect( dbname: 'chitter', port: '5433')
		end

		conn.exec("INSERT INTO cheets (text, author, time_posted) VALUES ('#{text}', '#{author}', '#{time_posted}') RETURNING id, text, author, time_posted")
	end 

	def self.all

		if ENV['ENVIRONMENT'] == 'test'
			conn = PG.connect( dbname: 'chitter_test', port: '5433' )
		else 
			conn = PG.connect( dbname: 'chitter', port: '5433')
		end 

		res = conn.exec("SELECT * FROM cheets;")
		res.map { |cheet|
			Cheet.new(id: cheet['id'], text: cheet['text'], author: cheet['author'])
		}
	end 
end 