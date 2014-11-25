require 'rubygems'
require 'watir-webdriver'
require_relative 'adoption_helper'

include AdoptionHelper

# def goto_adopt_puppies_site
# 	@browser = Watir::Browser.new :firefox
# 	@browser.goto 'http://puppies.herokuapp.com'
# end	

# def adopt_puppy_number(num)
# 	@browser.button(:value => 'View Details', :index => num - 1).click
# 	sleep 2
# 	@browser.button(:value => 'Adopt Me!').click
# end	

# def continuing_adopting_puppies
#   @browser.button(:value => 'Adopt Another Puppy').click 
# end	

# def checkout(name, address, email, pay_type)
# 	@browser.button(:value => 'Complete the Adoption').click
# 	@browser.text_field(:id => 'order_name').set (name)
# 	@browser.text_field(:id => 'order_address').set (address)
# 	@browser.text_field(:id => 'order_email').set (email)
# 	@browser.select_list(:id => 'order_pay_type').select (pay_type)
# 	@browser.button(:value => 'Place Order').click
# end 	

# def verify_page_contains(text)
# 	fail unless @browser.text.include? text
# end 	

# def close_browser
# 	@browser.close
# end	

goto_the_puppy_adoption_site
adopt_puppy_number 1
continue_adopting_puppies
adopt_puppy_number 2
checkout_with('Me', '1 street', '1@email.com', 'Check')
verify_page_contains 'Thank you for adopting a puppy!'
closer_the_browser
