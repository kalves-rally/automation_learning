Feature: User Stories Page

  Background:
    Given I am on the "User Stories" page

  @smoke
  Scenario: Smoke Test
    Then I should see the heading "User Stories"

  Scenario: Creating a new User Story
  	When I create a new user story
  	Then I should see a user story on the list of stories  
