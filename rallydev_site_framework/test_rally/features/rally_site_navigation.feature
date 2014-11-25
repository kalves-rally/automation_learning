Feature: Navigating through the Rally site


	Scenario: Navigating through the 'What is Rally' tab
		Given I am on the Rally site
		When I am on the What is Rally? tab
		And I click on Talk to Us link
		And I  fill out a form 
		Then I should be able to submit the information


	Scenario: Request a call
		Given I am a potential Rally user
		When I request a phone call 
		Then I should receive confirmation of my request	

	Scenario: Comparing editions
		Given I am a potential Rally user
		When I have questions about pricing
		Then I should be able to get the information I need	

	Scenario: Attending an event
		Given I am an existing Rally user
		When I want to learn about upcoming events
		Then I should see the h1 "Events"

	@current
	Scenario: Smoke test
		Given I am a potential Rally user
		When I have questions about pricing
		Then I should see the h1 "Editions & Pricing"