require_relative '../config/environment.rb'

user1 = User.new("Joseph")
user2 = User.new("Ann")
user3 = User.new("David")

recipe1 = Recipe.new("Pizza")
recipe2 = Recipe.new("Cake")
recipe3 = Recipe.new("Taco")

recipe_card1 = RecipeCard.new("July 2 1993", user1, recipe1, 3)
recipe_card2 = RecipeCard.new("March 15 1980", user2, recipe2, 2)
recipe_card3 = RecipeCard.new("Decemeber 25 200", user3, recipe3, 5)
recipe_card4 = RecipeCard.new("April 9 2004", user2, recipe3, 10)
recipe_card5 = RecipeCard.new("November 22 2010", user2, recipe3, 7)
recipe_card5 = RecipeCard.new("November 22 2010", user2, recipe2, 4)
recipe_card5 = RecipeCard.new("November 22 2010", user2, recipe1, 1)

ingredient1 = Ingredient.new("Cheese")
ingredient2 = Ingredient.new("Vanilla")
ingredient3 = Ingredient.new("Beef")
ingredient4 = Ingredient.new("Pepperoni")
ingredient5 = Ingredient.new("Cholate")

recipe_ingredient1 = RecipeIngredient.new(ingredient1, recipe1)
recipe_ingredient2 = RecipeIngredient.new(ingredient2, recipe2)
recipe_ingredient3 = RecipeIngredient.new(ingredient3, recipe3)
recipe_ingredient4 = RecipeIngredient.new(ingredient4, recipe1)
recipe_ingredient5 = RecipeIngredient.new(ingredient5, recipe2)

allergen1 = Allergen.new("dairy", user1, ingredient1)
allergen2 = Allergen.new("sugar", user2, ingredient2)
allergen3 = Allergen.new("Meat", user3, ingredient3)
allergen4 = Allergen.new("milk", user3, ingredient2)
allergen5 = Allergen.new("milk", user3, ingredient4)



binding.pry
