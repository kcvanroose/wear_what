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
  {name: 'Trainers'},
  {name: 'Hat'},
  {name: 'Scarf'},
  {name: 'Jacket'}
  ])
puts 'Categories: ', Category.all.length


users = User.create ([
  {username: 'Casey'}
])

puts 'Users: ', User.all.length

# items = Item.create ([
#   {image: 'scbnejkcbe', color: 'red', brand: 'LuLuLemon', user_id: 1, category_id: 1},
#   {image: 'scbnedwddwd', color: 'blue', brand: 'Burberry', user_id: 1, category_id: 2},
#   {image: 'scbnedwddwd', color: 'blue', brand: 'Burberry', user_id: 1, category_id: 3},
#   {image: 'cevfrvedwddwd', color: 'purple', brand: 'Cors', user_id: 1, category_id: 4}
# ])

jacket = Item.new(color: 'black', brand: 'Canada Goose', user_id: 1, category_id: 7)
f = File.open('app/views/Jacket.jpeg')
jacket.image = f
jacket.save

shirtOne = Item.new(color: 'Camel', brand: 'Burberry', user_id: 1, category_id: 3)
f = File.open('app/views/shirt1.jpeg')
shirtOne.image = f
shirtOne.save

shirtTwo = Item.new(color: 'Black', brand: 'Armani', user_id: 1, category_id: 3)
f = File.open('app/views/shirt2.jpeg')
shirtTwo.image = f
shirtTwo.save

shirtThree = Item.new(color: 'Carmel Pink', brand: 'Polo Ralph Lauren', user_id: 1, category_id: 3)
f = File.open('app/views/shirt3.jpeg')
shirtThree.image = f
shirtThree.save

shirtFour = Item.new(color: 'Noir', brand: 'Balmain', user_id: 1, category_id: 3)
f = File.open('app/views/shirt4.jpeg')
shirtFour.image = f
shirtFour.save

tshirtOne = Item.new(color: 'Navy Blue', brand: 'Polo Ralph Lauren', user_id: 1, category_id: 2)
f = File.open('app/views/tshirt1.jpeg')
tshirtOne.image = f
tshirtOne.save

tshirtTwo = Item.new(color: 'White', brand: 'Loewe', user_id: 1, category_id: 2)
f = File.open('app/views/tshirt2.jpeg')
tshirtTwo.image = f
tshirtTwo.save

tshirtThree = Item.new(color: 'White', brand: 'DSQUARED2', user_id: 1, category_id: 2)
f = File.open('app/views/tshirt3.jpeg')
tshirtThree.image = f
tshirtThree.save

tshirtFour = Item.new(color: 'Black', brand: 'A Bathing Ape', user_id: 1, category_id: 2)
f = File.open('app/views/tshirt4.jpeg')
tshirtFour.image = f
tshirtFour.save


trousersOne = Item.new(color: 'Blue', brand: 'J Brand', user_id: 1, category_id: 1)
f = File.open('app/views/trousers1.jpeg')
trousersOne.image = f
trousersOne.save

trousersTwo = Item.new(color: 'Black', brand: 'Paige', user_id: 1, category_id: 1)
f = File.open('app/views/trousers2.jpeg')
trousersTwo.image = f
trousersTwo.save

trainersOne = Item.new(color: 'Grey', brand: 'Giuseppe Zanotti', user_id: 1, category_id: 5)
f = File.open('app/views/trainers1.jpeg')
trainersOne.image = f
trainersOne.save

trainersTwo = Item.new(color: 'Grey/Light', brand: 'Giuseppe Zanotti', user_id: 1, category_id: 5)
f = File.open('app/views/trainers2.jpeg')
trainersTwo.image = f
trainersTwo.save

trainersThree = Item.new(color: 'Pewter light pumice', brand: 'Nike', user_id: 1, category_id: 5)
f = File.open('app/views/trainers3.jpeg')
trainersThree.image = f
trainersThree.save

shoesOne = Item.new(color: 'Brown', brand: 'Kurt Geiger London', user_id: 1, category_id: 4)
f = File.open('app/views/shoes1.jpeg')
shoesOne.image = f
shoesOne.save

shoesTwo = Item.new(color: 'Navy Blue', brand: 'Tods', user_id: 1, category_id: 4)
f = File.open('app/views/shoes2.jpeg')
shoesOne.image = f
shoesTwo.save

shoesThree = Item.new(color: 'Black', brand: 'Aldo'. user_id: 1, category_id: 4)
f = File.open('app/views/shoes3.jpeg')
shoesThree.image = f
shoesThree.save

hatOne = Item.new(color: 'White', brand: 'A-Cold-Wall', user_id: 1, category_id: 6)
f = File.open('app/views/hat1.jpeg')
hatOne.image = f
hatOne.save

hatTwo = Item.new(color: 'Grey', brand: 'Paul Smith', user_id: 1, category_id: 6)
f = File.Open('app/views/hat2.jpeg')
hatOne.image = f
hatOne.save

scarfOne = Item.new(color: 'Grey', brand: 'Tom Ford', user_id: 1, category_id: 6)
f = File.open('app/views/scarf1.jpeg')
scarfOne.image = f
scarfOne.save

jacketTwo = Item.new(color: 'Grey', brand: 'Tom Ford', user_id: 1, category_id: 7)
f = File.open('app/views/jacket2.jpeg')
jacketTwo.image = f
jacketTwo.save





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
