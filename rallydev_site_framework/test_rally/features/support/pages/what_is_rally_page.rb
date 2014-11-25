class WhatIsRallyPage
	include PageObject

	page_url('https://rallydev.com/about/what-is-rally')

	link(:talk_to_us_button, :text => 'Talk to Us')
	
	text_field(:company_name, :class => 'company-control')
	text_field(:phone_number, :id => 'edit-phone')
	select_list(:country_name, :class => 'country-control')
	select_list(:state_name, :class => 'state_control')
	text_area(:notes_field, :class => 'form-textarea')
	button(:submit_button, :id => 'edit-submit--2')

	def talk_to_us
		talk_to_us_button
	end	

	def form_info()
		# wait_until do 
		# 	contact_first_name_element.visible?	
		# end	
		contact_first_name_element.send_keys 'Jane'
		contact_last_name_element.send_keys 'Doe'
		 # self.l_name = 'Doe'
		# self.email_address = '1@email.com'
		# self.company_name = 'My company'
		# self.phone_number = '123-4567'
		# self.country_name = 'Brazil'
		# self.state_name = 'International'
		# notes_field = 'Testing again'
		sleep 2
	end	

	def complete_form
		talk_to_us_button
		contact_first_name_element.send_keys 'Jane'
		contact_last_name_element.send_keys 'Doe'
	end	

  # def submit_info
  # 	submit_button
  # end

  private 
  	def contact_first_name_element	
  		text_field_element(:id => 'edit-firstname')
  	end	

  	def contact_last_name_element
  		text_field_element(:id => 'edit-lastname')
  	end	

  	def contact_email_address_element
  		text_field_element(:id => 'edit-email')
  	end	
end
