Feature: Adopt Puppy

	#like a before each
	Background:
		Given I am on the puppy adoption site

	Scenario Outline: Adopting a puppy
		When I adopt a puppy
		Then I should be able to pay with a "<payment_type>"

		Examples:
			| payment_type   |
			| Check          |
			| Credit card    |
			| Purchase order |

	
	Scenario Outline: Purchasing aditional products and services
		When I adopt a puppy and add "<additional_products>"
		Then I should be able to checkout
			
		Examples:
			| additional_products |
			| Collar & Leash      |
			| Chew Toy            |
			| Travel Carrier      |
			| First Vet Visit     |
				
	
	Scenario Outline: Email validation
		When I use the email address "<email>"
		Then I "<outcome>" see a success message

		Examples:
		| email       | outcome    |
		| 1@email.com | should     |
		| 1email.com  | should not |


	@current
	Scenario Outline: Form validation
		When I adopt a puppy
		And I enter the information "<name>", "<address>", "<email>", "<pay_type>"
		Then I "<outcome>" see a success message
	
		Examples:
		| name  | address    | email   | pay_type | outcome    |
		| James | 123 N Main | j@j.com | Check    | should     |
		|       | 123 N Main | j@j.com | Check    | should not |
		| James |            | j@j.com | Check    | should not |
		| James | 123 N Main |         | Check    | should not |
		

	Scenario: Validation Message
		When I adopt a puppy
		And I don't enter my address
		Then I should see the validation message "Address can't be blank"
