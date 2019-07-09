# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account = Account.find_or_create_by!(login: 'vasya') { |a| a.email = 'vasilii@pupkin.net' }

p1 = account.products.find_or_create_by!(title: 'Cookies') do |p|
  p.attributes = { price: 4.2, quantity: 10 }
end
p2 = account.products.find_or_create_by!(title: 'Coffee') do |p|
  p.attributes = { price: 2.5, quantity: 20 }
end

p1.listings.first_or_create!
p2.listings.first_or_create!
