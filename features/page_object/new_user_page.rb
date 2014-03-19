# encoding: utf-8
require 'capybara/rails'

class NewUserPage

  def initialize(session)
    @session = session
  end

  def find(user)
    @session.find_by_id("list_users").find("li span", :text => user)
  end

end
