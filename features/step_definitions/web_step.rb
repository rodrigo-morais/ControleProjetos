# encoding: utf-8
E /^que estou na (.+) do sistema$/ do |page_name|
  @webPage = WebPage.new(Capybara.current_session)
  @webPage.visit path_to(page_name)
end

E /^clico no botão "([^\"]*)" da caixa de confirmação de exclusão$/ do |button|
  @webPage.click_confim_dialog(button)
end

Quando /^clico no link "([^\"]*)"$/ do |link|
  @webPage ||= WebPage.new(Capybara.current_session)
  @webPage.click_link(link)
end

E /^preencho o campo "([^\"]*)" com o valor "([^\"]*)" para o usuário a ser cadastrado$/ do |field, value|
  @webPage =   @webPage || WebPage.new(Capybara.current_session)
  @webPage.fill_field field, value
end

E /^preencho o campo "([^\"]*)" com o valor "([^\"]*)" para o cliente a ser cadastrado$/ do |field, value|
  @webPage ||= WebPage.new(Capybara.current_session)
  @webPage.fill_field field, value
end

E /^clico no botão "([^\"]*)"$/ do |button|
  @webPage ||=  WebPage.new(Capybara.current_session)
  @webPage.click_button button
end

Entao /^sou redirecionado para a (.+) exibindo a mensagem "([^\"]*)"$/ do |page_name, error_message|
  current_path.should == path_to(page_name)
  @webPage ||= NewClientPage.new(Capybara.current_session)
  @webPage.find_error(error_message).should be_true
end

Entao /^sou direcionado para a (.+)$/ do |page_name|
  current_path.should == path_to(page_name)
end

E /^campo "([^\"]*)" esta preenchido com o valor "([^\"]*)"$/ do |field, value|
  @webPage ||= NewClientPage.new(Capybara.current_session)
  @webPage.should have_value(field, value)
end

E /^altero "([^\"]*)" para o valor "([^\"]*)"$/ do |field, value|
  @webPage.change_value(field, value)
end

E /^existem clientes cadastrados, cada um com 12 usuários$/ do
  (1..10).each do |n|
    create(:client, :name => "Cliente#{n}")
  end
  Client.all.each do |client|
    (11..12).each do |n|
      user = create(:user, full_name: "Novo Usuario #{n}", :email => "usuario#{n}@usuario.com", client: client)
    end
  end
end
