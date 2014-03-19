# encoding: utf-8

World(FactoryGirl::Syntax::Methods)

E /^cadastro um cliente com o nome repetido$/ do
  create(:client, :not_list)
end

Entao /^sou redirecionado para a (.+) do sistema com o cliente "([^\"]*)" listado$/ do |page_name, client|
  current_path.should == path_to(page_name)
  @newClientPage ||= NewClientPage.new(Capybara.current_session)
  @newClientPage.find(client).should be_true
end
