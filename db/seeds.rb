# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rhum")
Ingredient.create(name: "tequila")
Ingredient.create(name: "orange juice")
Ingredient.create(name: "tomato juice")
Ingredient.create(name: "love")



puts 'Cleaning database...'
Cocktail.destroy_all

puts 'Creating cocktails...'
cocktail_attributes = [
  {
    name:     { name: "Caipirinha" },
    url:      "http://assets.epicurious.com/photos/579a2d8e437fcffe02f7230b/master/pass/caipirinha-072816.jpg",
  },
  {
    name:     { name: "Cosmopolitan" },
    url:      "http://cdn.barmano.com/recipe-images/cosmopolitan-cocktail-56-big.jpg",

  },
  {
    name:     { name: "Negroni" },
    url:      "http://cdn.liquor.com/wp-content/uploads/2016/04/15115430/NegroniOriginal720FB.jpg",

  },
  {
    name:     { name: "Long Island Ice Tea" },
    url:      "https://cdn.liquor.com/wp-content/uploads/2016/08/03142509/Most-Popular-Cocktail-Recipes-July-2016-long-island-iced-tea-720x378-social.jpg",

  },
  {
    name:     { name: "Cuba Libre" },
    url:      "http://www.drinkoo.de/wp-content/uploads/2016/06/Cuba-Libre.jpg",

  },
  {
    name:     { name: "Gin Tonic" },
    url:      "https://www.noz.de/media/2016/10/18/colourbox12888949_201610181610_full.jpg",

  },
  {
    name:     { name: "Whisky Sour" },
    url:      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDE1DNx55y2UV2e9wjUwN2SF0IS_5tig7QfV2Nyi11rK-t9h6C'
  },
  {
    name:     { name: "Bloody Marry" },
    url:      'https://cdn.liquor.com/wp-content/uploads/2012/08/Stoli-Bloody-Mary-newest.jpg'
  },

]
cocktail_attributes.each do |a|
  cocktail = Cocktail.create!(a[:name])
  cocktail.photo_url = a[:url]
end

