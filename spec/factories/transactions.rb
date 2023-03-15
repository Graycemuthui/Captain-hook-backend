FactoryBot.define do
  factory :transaction do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    amount { Faker::Number.number(digits: 4) }
    payment_status { Faker::Lorem.word }
  end
end
