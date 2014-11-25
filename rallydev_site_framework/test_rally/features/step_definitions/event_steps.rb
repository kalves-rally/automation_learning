Given(/^I am an existing Rally user$/) do
  #just for context
end

When(/^I want to learn about upcoming events$/) do
  visit(HomePage)
  on(NavigationPage).upcoming_events
  on(EventsPage)
end

Then(/^I should see the h1 "(.*?)"$/) do |text|
  @current_page.should have_heading text
end

