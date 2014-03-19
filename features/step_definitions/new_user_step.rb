# encoding: utf-8

World(FactoryGirl::Syntax::Methods)

E /^que existem usuários cadastrados$/ do
  create(:user, :not_list_client)
end

Entao /^sou redirecionado para a (.+) do sistema com o usuário "([^\"]*)" listado$/ do |page_name, user|
  current_path.should == path_to(page_name)
  @newUserPage ||=  NewUserPage.new(Capybara.current_session)
  @newUserPage.find(user).should be_true
end
