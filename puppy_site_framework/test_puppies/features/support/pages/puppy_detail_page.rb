class PuppyDetailPage
	include PageObject

	button(:adopt_me, :value => 'Adopt Me!')

	def adopt_puppy
		adopt_me
	end 	
end	