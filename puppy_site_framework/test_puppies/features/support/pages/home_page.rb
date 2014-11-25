class HomePage
	include PageObject

	page_url('http://puppies.herokuapp.com')

	button(:view_details, :value => 'View Details', :index => 1) 
	paragraph(:success_message, :id => 'notice')

	def select_puppy(puppy_number)
		view_details
	end	

end 	