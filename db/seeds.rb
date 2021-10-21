# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "21-22 Season Pass", category: "Season Pass", price: 800.00)
Product.create(name: "Lift Ticket", category: "Lift Ticket", price: 100.00)
Product.create(name: "21-22 10 Day Season Pass", category: "Season Pass", price: 500.00)
Product.create(name: "Lift Ticket - 1/2 Day", category: "Lift Ticket", price: 60.00)

User.create(email: "test@test.com", first_name: "test", last_name: "testerson", date_of_birth: "10/10/1990", password: "testing123", admin: false )
User.create(email: "drew@test.com", first_name: "Drew", last_name: "Drew", date_of_birth: "23/10/1994", password: "drew", admin: true )
User.create(email: "t@test.com", first_name: "Tester", last_name: "Test", date_of_birth: "10/01/1977", password: "t", admin: false )

Customer.create(first_name: "Drew", last_name: "Pellum", date_of_birth: "30/02/1999", address: "4 Privet Dr. Johnson, TN", phone_number: "7655677765", email: "drew@drewsome.com", user_id: 3)

Transaction.create(total: 900, date: 21/10/2021, user_id: 3, customer_id: 1)

TransactionProduct.create(product_id: 1, transaction_id: 1)
TransactionProduct.create(product_id: 2, transaction_id: 1)

