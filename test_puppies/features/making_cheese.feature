Feature: Making Cheese

	As a cheese maker
	I want to make cheese
	So I can share my cheesiness


	Scenario: Using the cheese machine
		Given I have no cheese
		When I press the make cheese button
		Then I should have 1 piece of cheese

	
  Scenario Outline: Paying for the adoption
  Given I am on the puppy adopt site
  When I adopt a puppy
  Then I should be able to pay with a "<Payment Type>"

  Examples:
  | Payment Type   |
  | Credit card    |
  | Check          |
  | Purchase order |


  @current
  Scenario Outline: Three different puppy orders
  Given I am on the puppy adopt site
  When I adopt a puppy
  And I use the name of "<name>"
  And I use the address of "<address>"
  And I use the email of "<email>"

  Examples:
  | name   | address    | email       |
  | First  | 123 street | 1@email.com |
  | Second | 345 street | 2@email.com |
  | Third  | 567 street | 3@email.com |

  
