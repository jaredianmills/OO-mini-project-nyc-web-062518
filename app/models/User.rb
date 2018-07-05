class User

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select do |card|
      if card.user == self
        card.recipe
      end
    end
  end

  def add_recipe_card(args={})
    card = RecipeCard.new(user:self, recipe:recipe, ingredient:ingredient, date:date, rating:rating)
    card
  end

  def declare_allergen(ingredient)
    new_allergen = Allergen.new(ingredient: ingredient, user: self)
    new_allergen
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient if allergen.user == self
    end
  end

  def top_three_recipes
    user_recipes = RecipeCard.all.select do |top_recipes|
      top_recipes.user == self
    end
    user_recipes.sort_by {|recipe_card| recipe_card.rating}.reverse.first(3)
  end

  def most_recent_recipe
    self.recipes.last
  end


end
