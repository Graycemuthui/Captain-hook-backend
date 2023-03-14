FactoryBot.define do
  factory :customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    country { Faker::Address.country }
  end
end
