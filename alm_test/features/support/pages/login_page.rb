class LoginPage
	include PageObject

	page_url('https://test9cluster.rallydev.com/slm')
	text_field(:username, :id => 'j_username')
	text_field(:password, :id => 'j_password')
	button(:login_button, :id => 'login-button')

	def login
		self.username = 'test_sub@rallydev.com'
		self.password = 'Password'
		login_button
	end	

end	




