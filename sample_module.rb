#setting the argument equals something will use that value if you don't pass one
def adopt_puppies(num, pay_type, email="j@test.com",name, address)
  view_details_button(num).click
  adopt_me_button.click
	complete_the_adoption_button.click
	name(name)
  address(address)
  email(email)
  pay_type(pay_type)
	
	@browser.button(:value => 'Place Order').click
end	

#in this way, it is not constrained to the order of the arguments
def adopt_puppies_new(args)
	#boolean ? if_true : if_false
	name = args[:name] ? args[:name] : 'Mark'
	
	view_details_button(args[:number]).click
  adopt_me_button.click
	complete_the_adoption_button.click
	name(name)
  address(args[:address])
  email(args[:email])
  pay_type(args[:pay_type])
	
	# @browser.button(:value => 'Place Order').click
end

def goto(url)
	@browser.goto url
end	

def close
  @browser.close
end	

def address(string)
  	@browser.text_field(:id => 'order_address').set string
end	

def name(string)
		@browser.text_field(:id => 'order_name').set string
end 	

def email(string)
	@browser.text_field(:id => 'order_email').set string
end	

def pay_type(string)
  @browser.select_list(:id => 'order_pay_type').select string
end	

def view_details_button(num)
	@browser.button(:value => 'View Details', :index => (num - 1))
end	

def adopt_me_button()
  @browser.button(:value => 'Adopt Me!')
end 	

def complete_the_adoption_button()
  @browser.button(:value => 'Complete the Adoption')
end 	