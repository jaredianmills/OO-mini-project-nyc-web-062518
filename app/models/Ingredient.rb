class Ingredient

@@all = []

attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def self.most_common_allergen
  allergy_count = {}
  Allergen.all.each do |allergen|
    if allergy_count[allergen.ingredient]
    allergy_count[allergen.ingredient] += 1
    else
    allergy_count[allergen.ingredient] = 1
    end
  end
  allergy_count.key(allergy_count.values.max)
end

end
