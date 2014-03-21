# -*- coding: utf-8 -*-

World(FactoryGirl::Syntax::Methods)

Dado /^que estou logado com usuário com perfil de "([^\"]*)"$/ do |profile|
  if profile == "administrador"
    create(:user, :not_list_admin)
  elsif profile == "cliente"
    create(:user, :not_list_client, :client_id => 2)
  end

  @webPage = WebPage.new(Capybara.current_session)
  @webPage.visit path_to("página inicial")

  @loginPage = LoginPage.new(Capybara.current_session)
  @loginPage.login_in_system('morales@mail.com', '?T2014', 'Fazer Login')  
end

Quando /^informo o e-mail "([^\"]*)", a senha "([^\"]*)" e clico no botão "([^\"]*)" do usuário com perfil de "([^\"]*)"$/ do |email, password, button, profile|
  if profile == "administrador"
    create(:user, :not_list_admin)
  elsif profile == "cliente"
    create(:client, :not_list)
    create(:user, :not_list_client)
  end
  @loginPage = LoginPage.new(Capybara.current_session)
  @loginPage.login_in_system(email, password, button)
end

Entao /^sou redirecionado para a (.+) do sistema como usuário logado$/ do |page_name|
  current_path.should == path_to(page_name)
end

Entao /^retorno para a (.+) do sistema$/ do |page_name|
  current_path.should == path_to(page_name)
end

E /^é exibida a mensagem de erro "([^\"]*)"$/ do |mensagem|
  @loginPage.getErrorMessage.should == mensagem
end

E /^a menssagem "([^\"]*)" é exibida$/ do |mensagem|
  @loginPage.getErrorMessage.should == mensagem
end

E /^a primeira opção do menu é "([^\"]*)"$/ do |menu|
  @loginPage.getFirstMenu.should == menu
end
