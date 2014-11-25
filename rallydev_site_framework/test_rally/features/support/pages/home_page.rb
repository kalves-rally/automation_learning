class HomePage
	include PageObject

	page_url('https://rallydev.com')

	link(:what_is_rally, :text => 'What is Rally?')

	def select_what_is_rally_tab
		what_is_rally
	end	

end	