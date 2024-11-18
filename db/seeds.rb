# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
PartyItem.destroy_all
User.destroy_all


3.times do |t|
  user = User.create!(name: Faker::Name.name, email:"#{t}anemail@provider.com", password:"123456")
  p user
end
10.times do
  item= PartyItem.create!( price: rand(30..150), name: Faker::Ancient.god, description: Faker::Books::Dune.quote, user: User.all.sample())
  p item
end
