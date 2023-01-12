require 'rails_helper'

describe "Customer Requests" do
  it "returns a list of a customers subscriptions" do
    customer_1 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)

    tea_1 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
    tea_2 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))

    sub_1 = Subscription.create!(title: "Tea Subscription # #{Faker::Number.between(from: 1, to: 100)}", price: Faker::Number.between(from: 1.0, to: 15.00).round(2), status: true, frequency: Faker::Number.between(from: 3, to: 30), tea_id: tea_1.id, customer_id: customer_1.id)
    sub_2 = Subscription.create!(title: "Tea Subscription # #{Faker::Number.between(from: 1, to: 100)}", price: Faker::Number.between(from: 1.0, to: 15.00).round(2), status: true, frequency: Faker::Number.between(from: 3, to: 30), tea_id: tea_2.id, customer_id: customer_1.id)

    get "/customers/#{customer_1.id}/subscriptions"

    expect(response).to be_successful
  end
end