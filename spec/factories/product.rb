FactoryBot.define do
  factory :product do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    price { Faker::Number.decimal(l_digits: 2) }
    stock { Faker::Number.number(digits: 2) }
    image_url { Faker::LoremFlickr.image(size: '50x60', search_terms: ['product']) }
    category { Faker::Number.between(from: 0, to: 3) }
  end
end
