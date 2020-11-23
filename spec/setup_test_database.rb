require 'pg'

p "setting up test database..."

def setup_test_database
	conn = PG.connect( dbname: 'chitter_test', port: '5433' )

	conn.exec("TRUNCATE cheets;")
end 