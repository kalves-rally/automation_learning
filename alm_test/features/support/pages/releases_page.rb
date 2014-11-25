class ReleasesPage
	include PageObject

	span(:heading, :id => 'releaseTitleBar')

	def wait_for_page
		wait_until do 
			heading_element.exists?
		end	
	end	

end	