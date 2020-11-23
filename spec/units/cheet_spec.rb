require 'cheet'

describe 'cheet functionality tests' do
	it "can create cheets" do
		Cheet.create(text: "test cheet", author: "test author")
	end

	it "grabs data from the db" do
		cheets = Cheet.all
		expect(cheets).to include 'test cheet'
	end
end