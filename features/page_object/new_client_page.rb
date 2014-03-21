# encoding: utf-8
require 'capybara/rails'

class NewClientPage

  def initialize(session)
    @session = session
  end

  def click_link_new_client(link)
    @session.click_link(link)
  end

  def find(client)
    @session.find_by_id("list").find("li").find("span", :text => client)
  end

end
