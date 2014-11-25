
Feature: Adopting puppies

  As a puppy lover
  I wanto to adopt puppies
  So they can chew my furniture
  
  Scenario: Adopting one puppy
    Given I am on the puppy adoption site
    When I click the View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Cheezy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

  
  # Scenario: Adopting one puppy
  # Given I am on the puppy adoption site
  # When I click the View Details button
  # And I click the Adopt Me button
  # And I click the Complete the Adoption button
  # And I enter "Cheezy" in the name field
  # And I enter "123 Main Street" in the address field
  # And I enter "cheezy@example.com" in the email field
  # And I select "Credit card" from the pay with dropdown
  # And I enter the name of "<name>" 
  # And I enter address of "<address>" 
  # And I enter email of "<email" 
  # And I select to pay with "<pay_type>" 
  # And I click the Place Order button
  # Then I should see "Thank you for adopting a puppy!"

  
  # Scenario: Adopting two puppies
  #   Given I am on the puppy adoption site
  #   When I click the first View Details button
  #   And I click the Adopt Me button
  #   And I click Adopt Another Puppy button
  #   And I click the second View Details button
  #   And I click the Adopt Me button
  #   And I click the Complete the Adoption button
  #   And I enter "Cheezy" in the name field
  #   And I enter "123 Main Street" in the address field
  #   And I enter "cheezy@example.com" in the email field
  #   And I select "Credit card" from the pay with dropdown
  #   And I click the Place Order button
  #   Then I should see "Thank you for adopting a puppy!"

  # Examples:
  # | name | address    | email       | pay_type       |
  # | Me1  | 123 street | 1@email.com | Credit card    |
  # | Me2  | 345 street | 2@email.com | Check          |
  # | Me3  | 678 street | 3@email.com | Purchase order |
  
  # Scenario: Validate cart with one puppy
  #   When I click the View Details button
  #   And I click the Adopt Me button
  #   Then I should see "Brook" as the name for line item 1
  #   And I should see "$34.95" as the subtotal for line item 1
  #   And I should see "$34.95" as the cart total

  # @current
  # Scenario: Validate cart with two puppies
  #   When I click the first View Details button
  #   And I click the Adopt Me button
  #   And I click the Adopt Another Puppy button
  #   And I click the second View Details button
  #   And I click the Adopt Me button
  #   Then I should see "Brook" as the name for line item 1
  #   And I should see "$34.95" as the subtotal for line item 1
  #   And I should see "Hanna" as the name for line item 2
  #   And I should see "$22.99" as the subtotal for line item 2
  #   And I should see "$57.94" as the cart total


