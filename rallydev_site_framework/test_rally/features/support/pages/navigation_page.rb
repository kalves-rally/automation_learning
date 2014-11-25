class NavigationPage
	include PageObject


	link(:products_and_platform, :href => '/platform-products/deliver-features-users-love-faster')
	link(:events, :href => '/events')
	
	def compare_editions
		products_and_platform

		#https://github.com/cheezy/page-object/wiki/Ajax-Calls
		#The line below substitute this:
		# wait_until do 
		# 	compare_editions_element.visible?
		# end	

		compare_editions_element.when_visible.click
	end	

	def upcoming_events
		events
		upcoming_events_element.when_visible.click
	end	

	private
	def compare_editions_element
		link_element(:href =>'/platform-products/editions-pricing')
	end	

	def upcoming_events_element
		link_element(:text => 'Upcoming Events')
	end	

end 	
