# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
100.times do
  user = Movie.create!(name: Faker::Book.title,year:Faker::Date.between(from:1900, to:2020),genre: Faker::Book.genre,synopsis: Faker::Movies::VForVendetta.quote,director: Faker::Book.author,allocine_rating: Faker::Number.decimal(l_digits: 1),my_rating: Faker::Number.decimal(l_digits: 1),already_seen: Faker::Boolean.boolean)
end

puts "VOICI LES 100 FILMS BANALES !!!"