# -*- coding: utf-8 -*-

World(FactoryGirl::Syntax::Methods)

Quando /^informo o e-mail "([^\"]*)", a senha "([^\"]*)" e clico no botão "([^\"]*)"$/ do |email, password, button|
  create(:user, :not_list_admin)
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
