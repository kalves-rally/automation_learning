When(/^I want to view all the test cases on my project$/) do
 	on(NavigationPage).goto(:test_cases_page)
 	on(TestCasesPage).wait_for_page
end