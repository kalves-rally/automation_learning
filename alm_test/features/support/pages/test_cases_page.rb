class TestCasesPage
	include PageObject

	span(:heading, :id => 'testcaseTitleBar')

	def wait_for_page
		wait_until do 
			heading_element.exists?
		end	
	end	

end	