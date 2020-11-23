require 'cheet'
require_relative '../setup_test_database'

describe 'cheet tests' do
	before(:all) do
		setup_test_database
	end

	it "can create cheets" do
		cheet = Cheet.create(text: "test cheet", author: "test author").first
		expect(cheet['text']).to eq 'test cheet'
	end

	it "grabs data from the db" do
		cheets = Cheet.all
		expect(cheets.first.text).to eq 'test cheet'
		expect(cheets.first.author).to eq 'test author'
	end
end