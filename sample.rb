require 'rubygems'
require 'watir-webdriver'

	@browser = Watir::Browser.new :firefox
	@browser.goto 'https://rallytest1.rallydev.com'
	@username_field = 'j_username'
	@password_field = 'j_password'
	@button_login = 'login-button'


#login
def login(username, password)
  @browser.text_field(:id => @username_field).set(username)
  @browser.text_field(:id => @password_field).set password
  @browser.button(:id => @button_login).click
  #sleep 10
end

def navigation(parent_nav, child_nav)
	sleep 8
	@browser.link(:text => parent_nav).click
	sleep 1
	@browser.link(:text => child_nav).click
	sleep 1
end

def create_new_artifact(artifact_type, name)
  @browser.span(:xpath => "//span[text() = '+ Add New']").click
  sleep 2
  @browser.input(:xpath => "//input[contains(@value, 'User Story')]").click
  sleep 2
  @browser.li(:xpath => "//li[text() = '#{artifact_type}']").click
  sleep 2
  @browser.text_field(:xpath => "//table[contains(@class, 'rally-textfield-component')]/tbody/tr/td/input").set name
  sleep 2
  @browser.span(:xpath => "//span[text() = 'Add']").click
  sleep 5
end

def create_new_artifact_2(artifact_type, name)
  
  a = case artifact_type
  when :user_story
 		"User Story"
 	when :defect
 		"Defect"
 	end

  @browser.span(:xpath => "//span[text() = '+ Add New']").click
  sleep 2
  @browser.input(:xpath => "//input[contains(@value, 'User Story')]").click
  sleep 2
  @browser.li(:xpath => "//li[text() = '#{a}']").click
  sleep 2
  @browser.text_field(:xpath => "//table[contains(@class, 'rally-textfield-component')]/tbody/tr/td/input").set name
  sleep 2
  @browser.span(:xpath => "//span[text() = 'Add']").click
  sleep 5
end	


#navigating to Iteration Status page
  #@browser.goto 'https://rallytest1.rallydev.com/#/21591982180d/iterationstatus'
	login("test_sub@rallydev.com", "Password")
	navigation('Track', 'Iteration Status')
	create_new_artifact_2(:defect, "This is my defect")



	# @browser.input(:name => 'Iteration').click
	# @browser.div(:xpath => "//div[text() = 'Find Me Please']").click
	# sleep 5
#//input[contains(@name,'Iteration')]  



  #@browser.select_list(:id ^= 'rallyiterationcombobox-').clear
  #@browser.select_list(:id ^= 'rallyiterationcombobox-').options
  #@browser.select_list(:id ^= "rallyiterationcombobox-").select 'Iteration 2 - Streamline Operations'



  @browser.close




#require 'watir-webdriver'
#b = Watir::@browser.new
#b.goto 'bit.ly/watir-webdriver-demo'
#b.text_field(:id => 'your-name').set 'your name'
#b.select_list(:id => 'entry_1').select 'Ruby'
#b.select_list(:id => 'entry_1').selected? 'Ruby'
#b.button(:name => 'submit').click
#b.text.include? 'Thank you'