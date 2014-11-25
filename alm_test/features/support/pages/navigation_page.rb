class NavigationPage
	include PageObject

	link(:track, :text => 'Track')
	link(:iteration_status, :text => 'Iteration Status')
	link(:quality, :text => 'Quality')
	link(:test_cases, :text => 'Test Cases')
	link(:plan, :text => 'Plan')
	link(:releases, :text => 'Releases')
	link(:portfolio, :text => 'Portfolio')
	link(:portfolio_items, :text => 'Portfolio Items')

	def goto(page)
		# if page == :iteration_status_page
		# 	#due to the way dynamic websites work, the content is not loaded right away, the elements is not on the page(the test thinks the dom is loaded but it isn't)
		# 	#this is called pooling, it will check if the element is there and wait until it is there
		# 	wait_until do
		# 		track_element.exists?
		# 	end
		# 	track
		# 	iteration_status
		# elsif page == :test_cases_page
		# 	wait_until do 
		# 		quality_element.exists?
		# 	end
		# 	quality
		# 	test_cases	
		# elsif page == :releases_page
		# 	wait_until do
		# 		plan_element.exists?
		# 	end
		# 	plan
		# 	releases	
		# elsif page == :portfolio_items_page
		# 	wait_until do
		# 		portfolio_element.exists?
		# 	end
		# 	portfolio
		# 	portfolio_items			
		# else 
		# 	puts 'incorrect parameter'
		# end		

		case page
			when :iteration_status_page
				# wait_until do
				# 	track_element.exists?
				# end	
				# track
				track_element.when_visible.click
				iteration_status

			when :test_cases_page	
				# wait_until do 
				# 	quality_element.exists?
				# end
				# quality
				quality_element.when_visible.click
				test_cases

			when :releases_page
				# wait_until do 
				# 	plan_element.exists?
				# end	
				# plan
				plan_element.when_visible.click
				releases

			when :portfolio_items_page
				# wait_until do 
				# 	portfolio_element.exists?
				# end	
				# portfolio
				portfolio_element.when_visible.click
				portfolio_items

			else
				puts 'incorrect parameter'	
		end	
	end	



end	