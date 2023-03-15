FactoryBot.define do
  factory :order_detail do
    order_id { Faker::Number.number(digits: 2) }
    product_id { Faker::Number.number(digits: 2) }
    quantity { Faker::Number.number(digits: 2) }
    unit_price { Faker::Number.decimal(l_digits: 2) }
  end
end
