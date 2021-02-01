# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Clean database...'
Product.delete_all
User.delete_all

puts 'Creating 5 products...'
5.times do |i|
  product = Product.create!(
    name: Faker::Company.name,
    tagline: Faker::Company.catch_phrase
  )
  puts "#{i + 1}. #{product.name}"
end

puts 'Create an user...'
User.create(
  email: 'stephane@email.com',
  password: '123456',
  first_name: "Stephane",
  last_name: "BRICLOT"
)

puts 'Finished!'
