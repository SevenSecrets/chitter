class Cheet

	def self.create(text:, author:)
		if ENV['ENVIRONMENT'] == 'test'
			conn = PG.connect( dbname: 'chitter_test', port: '5433' )
		else 
			conn = PG.connect( dbname: 'chitter', port: '5433')
		end

		conn.exec("INSERT INTO cheets (text, author) VALUES ('#{text}', '#{author}');")
	end 

	def self.all

		if ENV['ENVIRONMENT'] == 'test'
			conn = PG.connect( dbname: 'chitter_test', port: '5433' )
		else 
			conn = PG.connect( dbname: 'chitter', port: '5433')
		end 

		res = conn.exec("SELECT * FROM cheets;")
		res.map { |cheet| cheet }
	end 
end 