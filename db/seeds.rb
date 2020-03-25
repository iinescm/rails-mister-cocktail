puts "creating the best ingredients..."

puts" deleting cocktail..."

Cocktail.destroy_all

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Bourbon")
Ingredient.create(name: "Brandy")
Ingredient.create(name: "Whiskey")
Ingredient.create(name: "Cointreau")
Ingredient.create(name: "Vermouth")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Kahlua")
Ingredient.create(name: "Scotch")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Grand Marnier")
Ingredient.create(name: "Pernod")
Ingredient.create(name: "Triple Sec")


puts "Done!"
