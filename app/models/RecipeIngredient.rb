
class RecipeIngredient
  attr_accessor :ing, :recipe

  @@all = []

  def self.all
    @@all
  end

  def initialize(ing, recipe)
    @ing = ing
    @recipe = recipe
    self.class.all << self
  end



end
