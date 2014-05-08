require 'capybara/rails'

class WebPage

  def initialize(session)
    @session = session
  end

  def visit(page)
    @session.visit page
  end

  def click_confim_dialog(button)
    if button.downcase == 'cancelar'
      @session.driver.browser.switch_to.alert.dismiss
    else
      @session.driver.browser.switch_to.alert.accept
    end
  end

  def has_value?(field, value)
    @session.has_field?(field, :with => value)
  end

  def click_link(link)
    @session.click_link(link)
  end

  def click_button(button)
    @session.click_button(button)
  end

  def fill_field(field, value)
    @session.fill_in(field, :with => value, :match => :prefer_exact)
  end

  def find_error(error_message)
    @session.first("li", :text => error_message)
  end

  def change_value(field, value)
    @session.fill_in(field, :with => value)
  end

end
