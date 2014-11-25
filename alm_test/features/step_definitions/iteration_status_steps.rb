Given(/^I am a Rally User$/) do
  visit(LoginPage).login
end

When(/^I want to check on the status of an iteration$/) do
 	on(NavigationPage).goto(:iteration_status_page)
 	on(IterationStatusPage)
end

#expected_heading is defined on the feature as 'Iteration Status'
Then(/^I should see the heading "(.*?)"$/) do |expected_heading|
  @current_page.should have_heading expected_heading
end