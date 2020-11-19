feature 'index page' do
	scenario 'can run app and check page content' do 
		visit('/')
		expect(page).to have_content 'Chitter'
	end

	scenario 'can open index and send peep' do
		visit('/')
		fill_in('text', with: 'test peep')
		click_button('Send')
		expect(page).to have_content 'test peep'
	end
end