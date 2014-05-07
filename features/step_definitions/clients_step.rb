# encoding: utf-8

World(FactoryGirl::Syntax::Methods)

Quando /^clico no link de menu "Clientes"$/ do
  @clientsPage = ClientsPage.new(Capybara.current_session)
  @clientsPage.click_link_clients
end

Entao /^sou redirecionado para a (.+) do sistema com nenhum cliente listado$/ do |page_name|
  current_path.should == path_to(page_name)
  @clientsPage.should_not have_clients
end

Entao /^sou redirecionado para a (.+) do sistema com cliente listado$/ do |page_name|
  current_path.should == path_to(page_name)
  @clientsPage.should have_clients
end

Entao /^sou redirecionado para a (.+) do sistema com (.+) clientes listados$/ do |page_name, qtd_clients|
  current_path.should == path_to(page_name)
  @clientsPage.quantity_clients.should == qtd_clients.to_i
end

Entao /^para cada cliente existe um link "Excluir"$/ do
  @clientsPage = @clientsPage || ClientsPage.new(Capybara.current_session)
  @clientsPage.should have_delete_clients
end

E /^clico no link "Excluir" do cliente "([^\"]*)"$/ do |client|
  @clientsPage = @clientsPage || ClientsPage.new(Capybara.current_session)
  @clientsPage.delete(client)
end

Entao /^o cliente "([^\"]*)" continua na lista de clientes$/ do |client|
  @clientsPage.should have_client(client)
end

Entao /^o cliente "([^\"]*)" não existe na lista de clientes$/ do |client|
  @clientsPage.should_not have_client(client)
end

Quando /^clico no link "Usuários" para o cliente "([^\"]*)"$/ do |client|
  @clientsPage = @clientsPage || ClientsPage.new(Capybara.current_session)
  @clientsPage.click_users_link(client)
end

E /^existem duas páginas para listar os clientes$/ do
  @clientsPage.number_pages.should == 2
end

E /^clico no link da página dois$/ do
  @clientsPage ||=  ClientsPage.new(Capybara.current_session)
  @clientsPage.click_page(2)
end

E /^são exibidos (.+) clientes$/ do |qtd_clients|
  @clientsPage.quantity_clients.should == qtd_clients.to_i
end
