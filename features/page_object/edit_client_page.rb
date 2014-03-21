# encoding: utf-8
require 'capybara/rails'

class EditClientPage

  def initialize(session)
    @session = session
  end

  def click_link_edit_client(client)
    @session.find_by_id("list").find("li").find("span", :text => client).first(:xpath,".//..").find("a", :text => "Editar").click
  end

  def click_save(button)
    @session.click_button(button)
  end

  def find(client)
    @session.find_by_id("list").find("li").find("span", :text => client)
  end

  def find_error(error_message)
    @session.find("li", :text => error_message)
  end

end
