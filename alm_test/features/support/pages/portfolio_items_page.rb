class PortfolioItemsPage
	include PageObject

	span(:heading, :id => 'titlebar-titletext')

	def wait_for_page
		wait_until do 
			heading_element.exists?
		end	
	end	
end	