require 'rubygems'
require 'watir-webdriver'

browser = Watir::Browser.new :firefox
browser.goto 'http://puppies.herokuapp.com'
sleep 2
browser.button(:value => 'View Details', :index => 0).click
browser.button(:value => 'Adopt Me!').click
browser.button(:value => 'Adopt Another Puppy').click
browser.button(:value => 'View Details', :index => 1).click
browser.button(:value => 'Adopt Me!').click
browser.checkbox(:name => 'collar').click
browser.button(:value => 'Complete the Adoption').click
browser.text_field(:id => 'order_name').set ('Me')
browser.text_field(:id => 'order_address').set ('123 My Street')
browser.text_field(:id => 'order_email').set ('me@email.com')
browser.select_list(:id => 'order_pay_type').select ('Credit card')
browser.button(:value => 'Place Order').click

fail 'Browser text did not match expected value' unless browser.text.include? 'Thank you for adopting a puppy!'
