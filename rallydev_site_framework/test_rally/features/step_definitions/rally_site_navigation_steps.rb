#visit(SomePage).do_something
#on(SomePage).do_something

Given(/^I am on the Rally site$/) do
  visit(HomePage)
end

When(/^I am on the What is Rally\? tab$/) do
  on(HomePage).select_what_is_rally_tab
end

When(/^I click on Talk to Us link$/) do
  on(WhatIsRallyPage).talk_to_us_button
end
When(/^I  fill out a form$/) do
   on(WhatIsRallyPage).form_info()
end

Then(/^I should be able to submit the information$/) do
  on(WhatIsRallyPage).form_info()

end

Given(/^I am a potential Rally user$/) do
  #just for context
end

When(/^I request a phone call$/) do
  visit(WhatIsRallyPage).complete_form
end

Then(/^I should receive confirmation of my request$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I have questions about pricing$/) do
  visit(HomePage)
  on(NavigationPage).compare_editions
  on(EditionsPricingPage)
end

Then(/^I should be able to get the information I need$/) do
  pending # express the regexp above with the code you wish you had
end



