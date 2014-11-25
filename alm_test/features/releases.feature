Feature: Releases
	
	Scenario: Landing Page
		Given I am a Rally User
		When I want to view all the releases on my project
		Then I should see the heading "Releases"