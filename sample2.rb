require 'watir-webdriver'

#page object gem
class IterationStatusPage
	include PageObject

   browser = Watir::Browser.new :firefox
   browser.goto 'https://rallytest1.rallydev.com'
end	

