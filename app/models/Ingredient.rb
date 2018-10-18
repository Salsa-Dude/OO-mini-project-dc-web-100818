
class Ingredient
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def allergens
    Allergen.all.select {|allergen| allergen.ing == self }
  end


  def allergen_count
   self.allergens.count
 end

def self.most_common_allergen
   self.all.max do |a,b|
     a.allergen_count <=> b.allergen_count
   end
 end

 # should return the ingredient instance that the highest number of users are allergic to



end
