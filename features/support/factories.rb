#FactoryGirl.define do
#  sequence(:full_name) { |n| "Novo Usuario #{n}" }
#  sequence(:email) { |n| "usuario#{n}@usuario.com" }

#  factory :user do |u|
#    trait :list do
#      u.full_name
#      u.email
#    end
#    trait :not_list do
#      full_name 'Rodrigo Morais'
#      email 'morais.rm@gmail.com'
#    end
#    u.password '@Rmm2014'
#    u.password_confirmation '@Rmm2014'
#  end

#  sequence(:name) { |n| "BioForLife#{n}" }

#  factory :client do |c|
#    trait :list do
#      c.name
#    end

#    trait :not_list do
#      name "BioForLife"
#    end
#    c.address 'Rua centro'
#    c.number '11'
#    c.complement '11'
#    c.ddd '11'
#    c.phone '32269772'
#    c.time_value_string '50'
#    c.time_value '50,0'

#    after(:create) do |client, evaluator|
#      (1..10).each do |n|
#        FactoryGirl.create(:user, full_name: "Novo Usuario #{n}", client: client)
#      end
#      client.reload
#    end

#  end
#end
