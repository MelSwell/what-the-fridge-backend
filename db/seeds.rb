# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Section.destroy_all
Fridge.destroy_all
User.destroy_all

user1 = User.create(name: "Diana", email: "DiJali@gmail.com")
user2 = User.create(name: "Seth", email: "Smcohen82@gmail.com")

fridge1 = Fridge.create(name: "Diana's Fridge", user_id: user1.id)
fridge2 = Fridge.create(name: "Seth's Fridge", user_id: user2.id)

section1 = Section.create(name: "Top Shelf", fridge_id: fridge1.id)
section2 = Section.create(name: "Bottom Shelf", fridge_id: fridge1.id)
section3 = Section.create(name: "Dairy Shelf", fridge_id: fridge2.id)
section4 = Section.create(name: "Fruit Shelf", fridge_id: fridge2.id)

Item1 = Item.create(name: "Yogurt", image: "Picture of yogurt", quantity: "6pack", date_added: Date.today, expiration_date: Date.new(2021, 05, 15), section_id: section1.id)
Item2 = Item.create(name: "Apples", image: "Picture of apples", quantity: "5", date_added: Date.yesterday, expiration_date: Date.new(2021, 06, 04), section_id: section1.id)
Item3 = Item.create(name: "Yesterday's Whopper", image: "Picture of Whopper", quantity: "1", date_added: Date.yesterday, expiration_date: Date.new(2021, 04, 29), section_id: section2.id)
Item4 = Item.create(name: "Old Scallions", image: "Picture of scallions", quantity: "1 bunch", date_added: Date.new(2021, 03, 28), expiration_date: Date.new(2021, 04, 15), section_id: section2.id)
Item.create(name: "Parmesan Cheese", image: "Picture of parmesan", quantity: "A wheel", date_added: Date.new(2021, 03, 11), expiration_date: Date.new(2021, 06, 27), section_id: section3.id)
Item.create(name: "Half and Half", image: "Picture of half and half", quantity: "A quart", date_added: Date.new(2021, 04, 11), expiration_date: Date.new(2021, 05, 15), section_id: section3.id)
Item.create(name: "Raspberries", image: "Picture of raspberrries", quantity: "A quart", date_added: Date.yesterday, expiration_date: Date.new(2021, 04, 29), section_id: section4.id)
Item.create(name: "Cantaloupe Wedges", image: "Picture of cantaloupe", quantity: "A pint", date_added: Date.today, expiration_date: Date.new(2021, 05, 03), section_id: section4.id)