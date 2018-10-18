

class User
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  # return all of the recipe card for this user
  def recipe_cards
    RecipeCard.all.select { |recipe_card| recipe_card.user == self}
  end

  # return all of the recipes this user has recipe cards for
  def recipes
    recipe_cards.map {|recipe_card| recipe_card.recipe}
  end

  # should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
  def add_recipe_card(date, recipe, rating)
    RecipeCard.new(date, self, recipe, rating)
  end

  # should accept an ingredient instance as an argument and
  #create a new allergen instance for this user and the given ingredient
  def declare_allergen(name, ing)
    Allergen.new(name,self,ing)
  end

  # should return all of the ingredients this user is allergic to
  def allergens
    Allergen.all.select do |allergen_instance|
      if allergen_instance.user == self
        return allergen_instance.ing
      end
    end
  end

  # top_three_recipes should return the top three highest rated recipes for this user.
  def top_three_recipes
      recipe_cards.max_by(3) {|recipe_cards| recipe_cards.rating}
  end


  # should return the recipe most recently added to the user's cookbook.
  def most_recent_recipe
    recipe_cards.last
  end



  end
