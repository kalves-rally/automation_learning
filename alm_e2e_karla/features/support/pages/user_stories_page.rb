class UserStoriesPage
  include PageObject

  image(:actions_link, :id => 'do')
  link(:new_user_story, :id => 'newAR')

  def create_new_user_story
  	actions_link_element.click
  	new_user_story
  end 	
end