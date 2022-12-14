# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Seeding restaurants..."

5.times do
  restaurant = Restaurant.create!(name: Faker::Food.spice, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: %w[Chinese Italian Japanese French Belgian].sample)
  puts "Restaurant with id #{restaurant.id}"
end

puts "Done seeding"
