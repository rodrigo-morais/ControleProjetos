# encoding: utf-8

World(FactoryGirl::Syntax::Methods)

Dado /^que existe cliente cadastrados$/ do
  create(:client, :not_list)
end

Dado /^que existem clientes cadastrados$/ do
  (1..10).each do |n|
      create(:client, name: "Cliente#{n}")
  end
end

E /^existem clientes cadastrados$/ do
  create_list(:client, 10)
end

E /^existe cliente cadastrado$/ do
  create(:client, :list)
end

E /^existem (.+) clientes cadastrados$/ do |qtd_clients|
  create_list(:client, qtd_clients.to_i)
end
