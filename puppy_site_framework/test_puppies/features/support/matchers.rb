RSpec::Matchers.define :have_success_message do |message|
	match_for_should do |page|
		page.success_message_element.exists?.should eq true
	end

	match_for_should_not do |page|
		page.success_message_element.exists?.should eq false
	end		

  failure_message_for_should do |page|
  	"Expected #{page} to have a success message"
  end	

  failure_message_for_should_not do |page|
  	"Expected #{page} not to have success message"
  end	
end	