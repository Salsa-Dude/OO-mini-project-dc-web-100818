
require 'pry'

class Recipe
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

 # Getting all the recipe_cards from self
  def recipes
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

# Getting all the recipe_ingredients from self
  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

 def recipe_count
   self.recipes.count
 end

# return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
def self.most_popular
   self.all.max do |a,b|
     a.recipe_count <=> b.recipe_count
   end
 end

# return the user instances who have recipe cards with this recipe
 def users
   recipes.map {|recipe| recipe.user}
 end

# return all of the ingredients in this recipe
 def ingredients
   recipe_ingredients.map {|recipe_ingredient| recipe_ingredient.ing}
 end


# should return all of the ingredients in this recipe that are allergens
def allergens
  array = []
  Allergen.all.each do |allergen_instance|
    ingredients.each do |ingredient|
      if allergen_instance.ing == ingredient
        array << allergen_instance.ing
      end
    end
  end
  array
end

#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
def add_ingredients(ingredients)
  RecipeIngredient.new(ingredients, self)
end





end #class
