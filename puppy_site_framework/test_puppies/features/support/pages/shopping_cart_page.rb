class ShoppingCartPage
	include PageObject


  button(:complete_the_adoption, :value => 'Complete the Adoption')
  checkbox(:collar_and_leash, :id => 'collar')
  checkbox(:chew_toy, :id => 'toy')
  checkbox(:travel_carrier, :id => 'carrier')
  checkbox(:first_vet_visit, :id => 'vet')

	def complete_adoption
		complete_the_adoption
	end	

	def add_additional_product(product)
		if product == 'Collar & Leash'
			check_collar_and_leash
		elsif product == 'Chew Toy'
			check_chew_toy	
		elsif product == 'Travel Carrier'
			check_travel_carrier
		else product == 'First Vet Visit'	
			check_first_vet_visit
		end		
	end	

end	