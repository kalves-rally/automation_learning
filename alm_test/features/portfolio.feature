Feature: Portfolio
	@current
	Scenario: Landing Page
		Given I am a Rally User
		When I want to view all the portfolio items on my project
		Then I should see the heading "Portfolio Items"