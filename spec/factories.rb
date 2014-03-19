FactoryGirl.define do
  sequence(:full_name) { |n| "Novo Usuario #{n}" }
  sequence(:email) { |n| "usuario#{n}@usuario.com" }

  factory :user do |u|
    trait :list do
      u.full_name
      u.email
    end
    trait :not_list do
      full_name 'Rodrigo Morales'
      email 'morales@mail.com'
    end
    trait :not_list_client do
      full_name 'Rodrigo Morales'
      email 'morales@mail.com'
      client_id 1
    end
    trait :not_list_admin do
      full_name 'Rodrigo Morales'
      email 'morales@mail.com'
      admin true
    end
    u.password '?T2014'
    u.password_confirmation '?T2014'
  end

  sequence(:name) { |n| "Cliente#{n}" }

  factory :client do |c|
    trait :list do
      c.name
    end

    trait :not_list do
      name "Cliente"
    end
    c.address 'Rua centro'
    c.number '11'
    c.complement '11'
    c.ddd '11'
    c.phone '92289712'
    c.time_value_string '50'
    c.time_value '50,0'

    after(:create) do |client, evaluator|
      (1..10).each do |n|
        FactoryGirl.create(:user, full_name: "Novo Usuario #{n}", :email => "usuario#{n}@usuario.com", client: client)
      end
      client.reload
    end

  end
end
