RSpec::Matchers.define :have_heading do |message|
  match do |page|
    page.heading.should == message
  end

  failure_message_for_should do |page|
    "||=> Expected: #{message}\n||=> Actual: #{page.heading}"
  end
end

RSpec::Matchers.define :have_index_link_to do |message|
  match do |page|
    expect(page.name_cell_with_link?(message)).to eq(true)
  end

  failure_message_for_should do |page|
    "||=> Expected: #{message} to be in the index\n"
  end
end