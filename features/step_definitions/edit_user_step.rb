# -*- coding: utf-8 -*-# encoding: utf-8

World(FactoryGirl::Syntax::Methods)

E /^encontro o usuário com o novo nome "([^\"]*)"$/ do |user|
  @editUserPage = EditUserPage.new(Capybara.current_session)
  @editUserPage.find(user).should be_true
end
