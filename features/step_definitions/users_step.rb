# encoding: utf-8

World(FactoryGirl::Syntax::Methods)

E /^existem (.+) usuários listados$/ do |qtd_users|
  @usersPage = @usersPage || UsersPage.new(Capybara.current_session)
  @usersPage.quantity_users.should == qtd_users.to_i
end

E /^existe 1 usuário listado$/ do
  @usersPage = @usersPage || UsersPage.new(Capybara.current_session)
  @usersPage.quantity_users.should == 1
end

E /^é exibido o título "([^\"]*)"$/ do |title|
  @usersPage = @usersPage || UsersPage.new(Capybara.current_session)
  @usersPage.title.should == title
end

E /^para cada usuário existe um link "Excluir"$/ do
  @usersPage = @usersPage || UsersPage.new(Capybara.current_session)
  @usersPage.should have_delete_users
end

E /^clico no link "([^\"]*)" do usuário "([^\"]*)"$/ do |link, user|
  @usersPage = @usersPage || UsersPage.new(Capybara.current_session)
  @usersPage.click_link(link, user)
end

Entao /^o usuário "([^\"]*)" continua na lista de usuários$/ do |user|
  @usersPage.should have_user(user)
end

Então /^o usuário "([^\"]*)" não existe na lista de usuários$/ do |user|
  @usersPage.should_not have_user(user)
end

E /^existem duas páginas para listar os usuários$/ do
  @usersPage = @usersPage || UsersPage.new(Capybara.current_session)
  @usersPage.number_pages.should == 2
end
