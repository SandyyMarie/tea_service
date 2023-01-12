# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer_1 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)
customer_2 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)
customer_3 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)
customer_4 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)
customer_5 = Customer.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, address: Faker::Address.full_address)


tea_1 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
tea_2 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
tea_3 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
tea_4 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
tea_5 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
tea_6 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10)) 
tea_7 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
tea_8 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
tea_9 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))
tea_10 = Tea.create!(title: Faker::Tea.variety, description: Faker::Tea.type, temperature: Faker::Number.within(range: 80..200), brew_time: Faker::Number.within(range: 1..10))


sub_1 = Subscription.create!(title: "Tea Subscription # #{Faker::Number.between(from: 1, to: 100)}", price: Faker::Number.between(from: 1.0, to: 15.00).round(2), status: Faker::Boolean.boolean, frequency: Faker::Number.between(from: 3, to: 30), tea_id: tea_3.id, customer_id: customer_1.id)
sub_2 = Subscription.create!(title: "Tea Subscription # #{Faker::Number.between(from: 1, to: 100)}", price: Faker::Number.between(from: 1.0, to: 15.00).round(2), status: Faker::Boolean.boolean, frequency: Faker::Number.between(from: 3, to: 30), tea_id: tea_1.id, customer_id: customer_2.id)
sub_3 = Subscription.create!(title: "Tea Subscription # #{Faker::Number.between(from: 1, to: 100)}", price: Faker::Number.between(from: 1.0, to: 15.00).round(2), status: Faker::Boolean.boolean, frequency: Faker::Number.between(from: 3, to: 30), tea_id: tea_4.id, customer_id: customer_3.id)
sub_4 = Subscription.create!(title: "Tea Subscription # #{Faker::Number.between(from: 1, to: 100)}", price: Faker::Number.between(from: 1.0, to: 15.00).round(2), status: Faker::Boolean.boolean, frequency: Faker::Number.between(from: 3, to: 30), tea_id: tea_2.id, customer_id: customer_4.id)
sub_5 = Subscription.create!(title: "Tea Subscription # #{Faker::Number.between(from: 1, to: 100)}", price: Faker::Number.between(from: 1.0, to: 15.00).round(2), status: Faker::Boolean.boolean, frequency: Faker::Number.between(from: 3, to: 30), tea_id: tea_6.id, customer_id: customer_5.id)