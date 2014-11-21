require 'rubygems'
require 'watir-webdriver'
#I could use 'require ./sample_module' also
require_relative 'sample_module'



@browser = Watir::Browser.new :firefox
goto('http://puppies.herokuapp.com')

#since we are not passing a name, it will use Mark
adopt_puppies_new({ :number => 1,
			              :pay_type => "Credit card",
			             
			              :address => '123 street',
			              :email => '1@email.com' })


# adopt_puppies_new({ :number => 1,
# 			              :pay_type => "Credit card",
# 			             	:name => 'Jon',
# 			              :address => '123 street',
# 			              :email => '1@email.com' })
# goto('http://rallydev.com/slm')
# close