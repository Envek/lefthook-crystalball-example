# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account = Account.find_or_create_by!(login: 'vasya') { |a| a.email = 'vasilii@pupkin.net' }

p1 = account.products.find_or_create_by!(title: 'Cookies')
p1.variations.first_or_create! { |v| v.attributes = { price: 4.2, quantity: 10 } }
p1.listings.first_or_create!

p2 = account.products.find_or_create_by!(title: 'Coffee')
p2.variations.first_or_create! { |v| v.attributes = { price: 2.5, quantity: 20 } }
p2.listings.first_or_create!
