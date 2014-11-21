Given /^I have no cheese$/ do 
	puts "I am so sad. I have no cheese :("
end
	
When /^I press the make cheese button$/ do
	puts "There is hope. I hope this machine works"
end 	

Then /^I should have (\d+) piece of cheese$/ do |num_pieces|
	puts "Rejoice! We have #{'num_pieces'} pieces of cheese."
end 	


Given(/^I am on the puppy adopt site$/) do
  @browser.goto('http://puppies.herokuapp.com') 
end

When(/^I adopt a puppy$/) do
  @browser.button(:value => 'View Details').click
  @browser.button(:value => 'Adopt Me!').click
  @browser.button(:value => 'Complete the Adoption').click
  
end

# Then(/^I should be able to pay with a Credit card$/) do
#   @browser.text_field(:id => 'order_name').set 'Me'
#   @browser.text_field(:id => 'order_address').set '123 street'
#   @browser.text_field(:id => 'order_email').set '1@mail.com'
#   @browser.select_list(:id => 'order_pay_type').select 'Credit card'
#   @browser.button(:value => 'Place Order').click  
# end


Then(/^I should be able to pay with a "(.*?)"$/) do |payment_type|
  @browser.text_field(:id => 'order_name').set 'Me'
  @browser.text_field(:id => 'order_address').set '123 street'
  @browser.text_field(:id => 'order_email').set '1@mail.com'
  @browser.select_list(:id => 'order_pay_type').select payment_type
  @browser.button(:value => 'Place Order').click  
end



When(/^I use the name of "(.*?)"$/) do |name|
   @browser.text_field(:id => 'order_name').set name
end

When(/^I use the address of "(.*?)"$/) do |address|
  @browser.text_field(:id => 'order_address').set address
end

When(/^I use the email of "(.*?)"$/) do |email|
 	 @browser.text_field(:id => 'order_email').set email
end



