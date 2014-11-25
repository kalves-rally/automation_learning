class SignInPage
  include PageObject

  page_url("https://test9cluster.rallydev.com/slm")

  text_field(:username_field, :id => 'j_username')
  text_field(:password_field, :id => 'j_password')
  button(:sign_in_button, :id => 'login-button')

  def sign_in(username, password)
    username_field = username
    password_field = password
    sign_in_button
    # @browser.text_field(:id => j_username).set username
    # @browser.text_field(:id => j_password).set password
    # @browser.input(:id => login-button).click
  end 

  def go_to_sign_in_page
    @browser.goto('https://test9cluster.rallydev.com/slm')
  end   
end