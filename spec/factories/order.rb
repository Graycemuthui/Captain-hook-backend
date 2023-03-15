FactoryBot.define do
  factory :order do
    total_price { Faker::Number.number(digits: 7) }
    payment_method { Faker::Number.between(from: 0, to: 3) }
    shipped_date { Faker::Date.between(from: '2014-09-23', to: '2014-09-25') }
    status { Faker::Number.between(from: 0, to: 4) }
  end
end
