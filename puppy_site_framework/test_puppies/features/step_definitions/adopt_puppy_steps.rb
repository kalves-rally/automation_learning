#visit(SomePage).do_something
#on(SomePage).do_something


Given(/^I am on the puppy adoption site$/) do
  visit(HomePage)
end

When(/^I adopt a puppy$/) do
  on(HomePage).select_puppy(1)
  on(PuppyDetailPage).adopt_puppy
  on(ShoppingCartPage).complete_adoption
end

Then(/^I should be able to pay with a "(.*?)"$/) do |payment_type|
	on(CheckOutPage).complete_order_with(payment_type)
end

When(/^I adopt a puppy and add "(.*?)"$/) do |product|
	on(HomePage).select_puppy(1)
  on(PuppyDetailPage).adopt_puppy
  on(ShoppingCartPage).add_additional_product(product)
end

Then(/^I should be able to checkout$/) do
  on(ShoppingCartPage).complete_adoption
  on(CheckOutPage).complete_order_with
end

When(/^I use the email address "(.*?)"$/) do |email|
  on(HomePage).select_puppy(1)
  on(PuppyDetailPage).adopt_puppy
  on(ShoppingCartPage).complete_adoption
  on(CheckOutPage).complete_order_with({:email=> email})
  on(HomePage)
end

Then(/^I "(.*?)" see a success message$/) do |outcome|
  if outcome == 'should'
    @current_page.should have_success_message
  elsif outcome == 'should not'
    @current_page.should_not have_success_message
  end  
end

When(/^I enter the information "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/) do |name, address, email, payment_type|
 my_order = {:name => name, :address => address, :email => email, :payment_type => payment_type}
 on(CheckOutPage).complete_order_with(my_order)
 on(HomePage)
end




