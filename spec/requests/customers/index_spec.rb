require 'rails_helper'

describe "Customer Requests" do
  xit "returns a list of a customers subscriptions" do
    customer_1 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)

    get "/customers/#{customer_1.id}/subscriptions"

    expect(response).to be_successful
  end
end