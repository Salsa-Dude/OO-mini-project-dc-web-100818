
class Allergen
  attr_accessor :name, :user, :ing

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, user, ing)
    @name = name
    @user = user
    @ing = ing
    self.class.all << self
  end



end
