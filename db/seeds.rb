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

PartyItem.create!( price: 12, name: "AfroWig", description: "The classical wig that made everyone look fashionable for a while. Now it makes people feel nostalgic. Be careful not to offend someone with the accent that comes natural while wearing it.", user: User.all.sample())
PartyItem.create!( price: 15, name: "Star Sunglasses", description: "Glasses that are neither comfortable nor simple. You want them to wear with maybe a fur jacket or new-year gear.", user: User.all.sample())
PartyItem.create!( name: "Cowboy Mustache",
    price: 7,
    description: "Something to comb in case you are bold.",
    user_id: 4)
PartyItem.create!( name: "Big Boots",
    price: 23,
    description: "Boots that make you look taller. You will need to get both so that you don't fall.",
    user_id: User.all.sample())
PartyItem.create!( name: "Cowboy Suit",
    price: 28,
    description: "Head-to-tows suit to make you look like a cattle handler. The guns will make you cool. The smell is not included."
    user: User.all.sample())
PartyItem.create!(name: "Witch Hat",
    price: 14,
    description: "Are spells your thing? You need something to hide a frog? Does your head not look pointy enough? This hat is for you!",
    user: User.all.sample())
PartyItem.create!( name: "Fairy God Mother dress",
    price: 35,
    description: "You don't own anything that is pink enough? Or too big for an elevator? Get this!",
    user: User.all.sample())
