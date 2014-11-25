RSpec::Matchers.define :have_heading do |message|
  match do |page|
    page.heading.should == message
  end

  failure_message_for_should do |page|
    "expected: #{message} got #{page.heading}"
  end
end