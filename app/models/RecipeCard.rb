
class RecipeCard
  attr_accessor :date, :user, :recipe, :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(date, user, recipe, rating)
    @date = date
    @user = user
    @recipe = recipe
    @rating = rating
    self.class.all << self
  end



end
