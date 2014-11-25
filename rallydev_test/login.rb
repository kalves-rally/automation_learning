require 'watir-webdriver'
require 'rubygems'

@username_field = 'j_username'
@password_field = 'j_password'
@test_site = 'https://test9cluster.rallydev.com/slm'
@login_button = 'login-button'


def start_browser
	@browser = Watir::Browser.new :firefox
end 

def login(username,password)
	@browser.goto @test_site
	@browser.text_field(:id => @username_field).set username
	@browser.text_field(:id => @password_field).set password
	@browser.button(:id => @login_button).click
	sleep 1
end 	

def navigate_to(main_tab, sub_tab)
	sleep 2.5
	@browser.link(:xpath => "//a[text() = '#{main_tab}']").click
	@browser.link(:xpath => "//a[text() = '#{sub_tab}']").click
end

def add_stories(count)
	sleep 2
	@browser.span(:xpath => "//span[text() = '+ Add New']").click
	
	count.times do |n|
		n += 1
		sleep 0.5
		@browser.text_field(:xpath => "//table[contains(@class, 'rally-textfield-component')]/tbody/tr/td/input").set "User Story #{n}"
		@browser.link(:xpath => "//a[contains(@class,'add')][contains(@class, 'primary')]").click
		#it collapses the Add New option
		@browser.link(:xpath => "//a[contains(@class, 'rly-collapse')]").click
	end
	# @browser.text_field(:xpath => "//table[contains(@class, 'rally-textfield-component')]/tbody/tr/td/input").set 'User Story 2'
	# @browser.link(:xpath => "//a[contains(@class,'add')][contains(@class, 'primary')]").click
	# @browser.text_field(:xpath => "//table[contains(@class, 'rally-textfield-component')]/tbody/tr/td/input").set 'User Story 1'
	# @browser.link(:xpath => "//a[contains(@class,'add')][contains(@class, 'primary')]").click

end

def move_story_to_top
	sleep 0.5
	@browser.span(:xpath => "//span[text() = 'Move to Top']").click
end

def add_task_to_story
	sleep 1
	@browser.div(:xpath => "//div[contains(@class, 'row-action-icon')]").click
	sleep 2
	@browser.span(:xpath => "//span[text()='Add Task...']").click
	sleep 1
	@browser.text_field(:xpath => "//div[contains(@class,'rallyListView')]//table[contains(@class,'rally-textfield-component')]/tbody/tr/td/input").set "Task 1"
	@browser.link(:xpath => "//div[contains(@id,'addNewContainer-innerCt')]//a[contains(@class, 'add primary')][contains(@class,'rly-small')]").click
	@browser.div(:xpath => "//div[contains(@id,'task-popover_header-innerCt')]//div[contains(@class, 'icon-cancel')]").click
	sleep 5
end

def add_defect_to_story
	# @browser.text(:xpath => "//td/div[text() = 'User Story 1']/preceding::div[contains(@class, 'row-action-icon')]").click
	sleep 1
	@browser.div(:xpath => "//div[contains(@class, 'row-action-icon')]").click
	sleep 1
	el1 = @browser.span(:xpath => "//span[text() = 'Add Defect...']")
	el1.click
	sleep 1
	@browser.text_field(:xpath => "//div[contains(@class,'rallyListView')]//table[contains(@class,'rally-textfield-component')]/tbody/tr/td/input").set "Defect 1"
	@browser.link(:xpath => "//div[contains(@id,'addNewContainer-innerCt')]//a[contains(@class, 'add primary')][contains(@class,'rly-small')]").click
	@browser.div(:xpath => "//div[contains(@id,'defect-popover_header-innerCt')]//div[contains(@class, 'icon-cancel')]").click
	sleep 5
end	

def add_test_case_to_story
  sleep 1
  @browser.div(:xpath => "//div[contains(@class, 'row-action-icon')]").click
  sleep 1
  @browser.span(:xpath => "//span[text() = 'Add Test Case...']").click
  sleep 1
  @browser.text_field(:xpath => "//div[contains(@class,'rallyListView')]//table[contains(@class,'rally-textfield-component')]/tbody/tr/td/input").set "Test Case 1"
  @browser.link(:xpath => "//div[contains(@id,'addNewContainer-innerCt')]//a[contains(@class, 'add primary')][contains(@class,'rly-small')]").click
  @browser.div(:xpath => "//div[contains(@id,'testcase-popover_header-innerCt')]//div[contains(@class, 'icon-cancel')]").click
  sleep 5
end	

def delete_story
	@browser.div(:xpath => "//div[contains(@class, 'row-action-icon')]").click
  @browser.span(:xpath => "//span[text() = 'Delete']").click
end	

def close
	@browser.close
end	

start_browser
login('test_sub@rallydev.com','Password')
navigate_to('Track', 'Iteration Status')
add_stories(1)
add_task_to_story
add_defect_to_story()
add_test_case_to_story
delete_story
# move_story_to_top
# Add tasks to stories
close


#On It. Status page add two new stories, and click on flare to 'Move to top'


# login
# navigate to Iteration Status page
# add stories
# move the newly created story to top
# close the browser