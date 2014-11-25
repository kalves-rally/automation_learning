When(/^I want to view all the portfolio items on my project$/) do
  on(NavigationPage).goto(:portfolio_items_page)
  on(PortfolioItemsPage).wait_for_page
end