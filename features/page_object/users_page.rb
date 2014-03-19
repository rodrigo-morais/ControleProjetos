# encoding: utf-8
require 'capybara/rails'

class UsersPage

  def initialize(session)
    @session = session
  end

  def quantity_users
    @session.find("#list_users").has_selector?("li") ? @session.find("#list_users").all("li").count : 0
  end

  def title
    @session.find("main section").find("h1").text
  end

  def has_delete_users?
    @session.find("#list_users").all("li").each do |user|
      if !user.find('a', :text => "Excluir")
        return false
      end
    end
    true
  end

  def click_link(link, user)
    @session.find_by_id("list_users").first("li span", :text => user).first(:xpath,".//..").find("a", :text => link).click
  end

  def has_user?(user)
    begin
      @session.find("#list_users").find('li span', :text => user)
      true
    rescue Capybara::ElementNotFound
      false
    end
  end

end
