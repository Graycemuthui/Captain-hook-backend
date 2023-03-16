FactoryBot.define do
  factory :order do
    total_price { Faker::Number.number(digits: 7) }
    payment_method { Faker::Number.between(from: 0, to: 3) }
    shipping_address { Faker::Date.between(from: '2023-01-01', to: '2025-01-01') }
    status { Faker::Number.between(from: 0, to: 4) }
  end
end
