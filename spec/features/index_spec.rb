feature 'index page' do
	scenario 'can run app and check page content' do 
		visit('/')
		expect(page).to have_content 'Chitter'
	end

	scenario 'can open index and send cheet' do
		visit('/')
		fill_in('text', with: 'test cheet')
		click_button('Send')
		expect(page).to have_content 'test cheet'
	end
end