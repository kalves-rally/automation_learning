# visit(SomePage).do_this
# on(ThisPage).do_this

Given(/^I am on the "(.*?)" page$/) do |arg1|
  on(SignInPage).go_to_sign_in_page
  on(SignInPage).sign_in('test_sub@rallydev.com', 'Password')
  on(DashboardPage).navigate('Plan', 'User Stories')
end

