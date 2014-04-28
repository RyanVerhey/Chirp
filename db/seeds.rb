# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([name: 'Chicago' }, name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'


25.times do |n|
  username = Faker::Name.first_name
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  password = "password"
  email = Faker::Internet.email
  User.create!(username: username,
              first_name: first_name,
              last_name: last_name,
              password: password,
              password_confirmation: password,
              email: email)
end

# 10.times do
#   name = Faker::Company.name
#   description = Faker::Lorem.sentence
#   street_address = Faker::Address.street_address
#   state = Faker::Address.state
#   city = Faker::Address.city
#   zip_code = Faker::Address.zip
#   user = User.all.first
#   Restaurant.create!(name: name,
#                       owner: user,
#                       description: description,
#                       street_address: street_address,
#                       state: state,
#                       city: city,
#                       zip_code: zip_code)
# end

food_types = %w(Fast\ food Fast\ casual Casual\ dining Family\ style Fine\ dining Bistro Buffet Café Cafeteria Coffeehouse Tea\ house Destination\ restaurant Tabletop\ cooking Mongolian\ BBQ Pub Teppanyaki Concession\ stand Diner Drive\ thru Sandwiches Bakery Bar Cantina Delicatessen Dinner\ theater Drive-in Food\ truck Burgers Mexican Chinese Korean Ice\ cream Meadery Brewery Breakfast American Japanese Sushi Snacks Steakhouse Take-out African Asian Western\ European Eastern\ European Oceanian South\ American Fusion Vegan Vegetarian Arab Native\ American Comfort\ food Street\ food New\ American Slow\ Food Farmers\ Market Lounge French Gastropub Brunch).sort

food_types.each { |food| Tag.create(name: food) }

rest = Restaurant.create!(name: "Alinea",
                   owner_id: nil,
                   description: "Alinea is a restaurant in Chicago that opened on May 4, 2005. Its head chef and owner, Grant Achatz, is known for his preparations and deconstructions of classic flavors. In 2010, Alinea became one of only two restaurants in Chicago to receive the highest rating of three stars from the Michelin Guide and was subsequently reviewed by restaurant critic Sam Sifton in the New York Times. The restaurant takes its name from the symbol alinea, which is featured as a logo.",
                   street_address: "1723 N Halsted St",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60614)
rest.tags << Tag.find_by(name: "New American")


rest = Restaurant.create!(name: "Girl & The Goat",
                   owner_id: nil,
                   description: "Girl & the Goat has been serving fun foods, craft beers, and making wine in a rustic and bad ass environment since summer 2010.",
                   street_address: "809 W Randolph St",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60607)
rest.tags << Tag.find_by(name: "New American")

rest = Restaurant.create!(name: "RL Restaurant",
                   owner_id: nil,
                   description: "Located adjacent to the world's largest Polo store, the Chicago Flagship on Michigan Avenue, RL Restaurant represents Ralph Lauren's debut into the restaurant industry. Opened in 1999, the restaurant features the vision and décor of Ralph Lauren and modern city-club cuisine.",
                   street_address: "115 E Chicago Ave",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60611)
rest.tags << Tag.find_by(name: "New American")
rest.tags << Tag.find_by(name: 'Steakhouse')

rest = Restaurant.create!(name: "Sable",
                   owner_id: nil,
                   description: "Step into Sable Kitchen & Bar. Discover what you've been waiting for: A new American gastro-lounge that artfully reinstates the cocktail to its rightful throne, a place where you'll lose yourself in a menu of Chef Heather Terhune's soul-satisfying social plates of delectable hors d'oeuvres, fresh fish, meats, sustainable selections from the farm and garden, alongside a collection of hand-crafted brick-oven flatbreads.",
                   street_address: "505 N State St",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60654)
rest.tags << Tag.find_by(name: "New American")
rest.tags << Tag.find_by(name: "Lounge")

rest = Restaurant.create!(name: "Henri",
                   owner_id: nil,
                   description: "From the creators of The Gage comes Henri — energetically American, French influenced. Heralded as an 'instant classic', Henri offers fine dining without pretention. Henri takes its inspiration, as well as its name, from the pioneering American architect Louis Henri Sullivan, whose work re-imagined our turn-of-the-century urban landscape.",
                   street_address: "18 S Michigan Ave",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60603)
rest.tags << Tag.find_by(name: "New American")
rest.tags << Tag.find_by(name: "French")


rest = Restaurant.create!(name: "HB Restaurant",
                   owner_id: nil,
                   description: "Home Bistro is a chipper American bistro fixed up with orange faux-finished walls cradling framed mirrors, artwork, and painted quotes. In keeping with this ideal, the staff is particularly hospitable and kind. The tight-knit team is proud of their bistro, and loyal fans keep returning to this delicious den where everybody knows your name – as well as the names of the servers and kitchen staff, all printed on the menu.",
                   street_address: "3404 N Halsted St",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60657)
rest.tags << Tag.find_by(name: "New American")
rest.tags << Tag.find_by(name: "Bistro")

rest = Restaurant.create!(name: "Au Cheval",
                   owner_id: nil,
                   description: "Au Cheval is not your typical greasy spoon diner. It's house-made foods, creative interpretations on classic dishes, and 30+ craft beers on tap.",
                   street_address: "800 W Randolph St",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60607)
rest.tags << Tag.find_by(name: "New American")
rest.tags << Tag.find_by(name: "Diner")
rest.tags << Tag.find_by(name: "Bar")

rest = Restaurant.create!(name: "The Gage",
                   owner_id: nil,
                   description: "The Gage is a 300 seat Restaurant and Tavern steps from Millennium Park. Situated at 24 South Michigan Avenue we are open late, seven days a week. We invite you to savor our delicious, upscale comfort food, fine wines, boutique beers and whiskeys while enjoying the relaxing ambience of our vintage decor.",
                   street_address: "24 S Michigan Ave",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60603)
rest.tags << Tag.find_by(name: "New American")
rest.tags << Tag.find_by(name: "Gastropub")

rest = Restaurant.create!(name: "Wildberry Pancakes and Cafe",
                   owner_id: nil,
                   description: "Breakfast & Lunch Featuring Local Farm Fresh Ingredients and Fresh Baked Breads",
                   street_address: "130 E Randolph St",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60601)
rest.tags << Tag.find_by(name: "New American")
rest.tags << Tag.find_by(name: "Breakfast")
rest.tags << Tag.find_by(name: "Brunch")

rest = Restaurant.create!(name: "NoMI Kitchen",
                   owner_id: nil,
                   description: "NoMI Kitchen is based on the idea that the center of the home is the kitchen, where family and friends gather; an everyday occasion place. The unique design presents the kitchen as the focal point, showcasing the culinary team and featuring a prominent Molteni stove.",
                   street_address: "800 N Michigan Ave, 7th Fl",
                   city: "Chicago",
                   state: 'IL',
                   zip_code: 60611)
rest.tags << Tag.find_by(name: "New American")
rest.tags << Tag.find_by(name: "Breakfast")
rest.tags << Tag.find_by(name: "Brunch")

10.times do
  Restaurant.all.each do |restaurant|
    restaurant.reviews.create!(reviewer_id: rand(1..25),
                                restaurant_id: restaurant.id,
                                content: Faker::Lorem.sentence,
                                stars: rand(3..5))
  end
end
