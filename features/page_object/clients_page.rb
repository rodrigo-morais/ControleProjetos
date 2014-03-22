# encoding: utf-8
require 'capybara/rails'

class ClientsPage

  def initialize(session)
    @session = session
  end

  def click_link_clients
    @session.find("header").find("ul").find("a", :text => 'Clientes').click
  end

  def has_clients?
    @session.find("#list").has_selector?("li")
  end

  def quantity_clients
    @session.find("#list").has_selector?("li") ? @session.find("#list").all("li").count : 0
  end

  def has_delete_clients?
    @session.find("#list").all("li").each do |client|
      if !client.find('a', :text => "Excluir")
        return false
      end
    end
    true
  end

  def delete(client)
    clientElement = @session.find("#list").find('li span', :text => client)
    clientElement.first(:xpath,".//..").click_link("Excluir")
  end

  def has_client?(client)
    begin
      @session.find("#list").find('li span', :text => client)
      true
    rescue Capybara::ElementNotFound
      false
    end
  end

  def click_users_link(client)
    clientElement = @session.find("#list").find('li span', :text => client)
    clientElement.first(:xpath,".//..").click_link("Usuários")
  end

  def number_pages
    @session.find("main section nav.pagination").all("span.page").count
  end

  def click_page(page)
    @session.find("main section nav.pagination").find('span.page a', :text => page.to_s).click
  end

end
