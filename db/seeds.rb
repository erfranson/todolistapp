# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
include Faker


5.times do
   User.create!(
   username: Faker::Internet.user_name,
   email:    Faker::Internet.email,
   password: Faker::Internet.password(6, 15)
   )
end
 users = User.all

10.times do
  Item.create!(
  name: Faker::Hipster.word
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
