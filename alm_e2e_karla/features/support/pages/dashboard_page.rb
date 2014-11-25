class DashboardPage
	include PageObject

	link(:main_tab_link, :xpath => "//a[contains(@title,'Plan')]")
	#https://github.com/cheezy/page-object/wiki/Elements
	#:link_text locates the element without me having to explicitly having to write the xpath(//a[text()='User Stories'])
	link(:sub_tab_link, :link_text => "User Stories")

	def navigate(main_tab, sub_tab)
    main_tab_link 
    sub_tab_link
	end	

end	