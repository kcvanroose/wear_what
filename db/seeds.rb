# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'carrierwave/orm/activerecord'

Category.destroy_all
Item.destroy_all
OutfitItem.destroy_all
Outfit.destroy_all
User.destroy_all


categories = Category.create([
  {name: 'Trousers'},
  {name: 'T-shirt'},
  {name: 'Shirt'},
  {name: 'Shoes'},
  {name: 'Trousers'}
  ])
puts 'Categories: ', Category.all.length


users = User.create ([
  {username: 'Casey'},
  {username: 'Mike'},
  {username: 'Jamie'}
])

puts 'Users: ', User.all.length

items = Item.create ([
  {image: 'scbnejkcbe', color: 'red', brand: 'LuLuLemon', user_id: 1, category_id: 1},
  {image: 'scbnedwddwd', color: 'blue', brand: 'Burberry', user_id: 1, category_id: 2},
  {image: 'scbnedwddwd', color: 'blue', brand: 'Burberry', user_id: 1, category_id: 3},
  {image: 'cevfrvedwddwd', color: 'purple', brand: 'Cors', user_id: 1, category_id: 4}
])

jacket = Item.new(color: 'black', brand: 'Canada Goose', user_id: 1, category_id: 3)
f = File.open('app/views/Jacket.jpeg')
jacket.image = f
jacket.save

puts 'Items: ', Item.all.length



outfits = Outfit.create ([
  {occasion: 'Date', user_id: 1},
  {occasion: 'Wedding', user_id: 1},
  {occasion: 'Gym', user_id: 1},
  {occasion: 'Work', user_id: 1}
  ])

puts Outfit.all.length



outfit_items = OutfitItem.create ([
  {outfit_id: 1, item_id: 1},
  {outfit_id: 2, item_id: 1},
  {outfit_id: 3, item_id: 2},
  {outfit_id: 4, item_id: 3},
  ])

puts OutfitItem.all.length
