When(/^I want to view all the releases on my project$/) do
 on(NavigationPage).goto(:releases_page)
 on(ReleasesPage).wait_for_page
end