module SmokeTestHelper

  def confirm_location
    wait_until do
      heading_element.visible?
    end
  end
end