require 'capybara/rails'

class LoginPage

  def initialize(session)
    @session = session
  end

  def login_in_system(user, password, button)
    @session.fill_in('E-mail', :with => user)
    @session.fill_in('Senha', :with => password)
    @session.click_button(button)
  end

  def getErrorMessage
    @error = @session.find('.alert')

    @error ? @error.text : ""

  end

end
