require 'peep'

describe 'peep tests' do
	before(:each) do
		@peep = Peep.new("test peep", "test")
	end

	it "should exist" do
		expect(@peep).to be_instance_of Peep
	end

	it "should have text" do
		expect(@peep).to respond_to(:text)  
	end

	it "should be the right text" do
		expect(@peep.text).to eq 'test peep'
	end

	it "should have author" do
		expect(@peep.author).to eq 'test'
	end
end