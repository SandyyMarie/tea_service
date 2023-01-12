FactoryBot.define do
  factory :customers, class: Customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    address { Faker::Address.full_address }
  end

  factory :teas, class: Tea do
    title { Faker::Tea.variety }
    description { Faker::Tea.type }
    temperature { Faker::Number.within(range: 80..200) }
    brew_time { Faker::Number.within(range: 1..10) }
  end

  factory :subscriptions, class: Subscription do
    association :customers, factory: :customer
    association :teas, factory: :tea
    title { "Tea Subscription # #{Faker::Number.between(from: 1, to: 100)}" }
    price { Faker::Number.between(from: 1.0, to: 15.00).round(2) }
    status { Faker::Boolean.boolean }
    frequency { Faker::Number.between(from: 3, to: 30) }
  end
end

#might need to check singular/plural