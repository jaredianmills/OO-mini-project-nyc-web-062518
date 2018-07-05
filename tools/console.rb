require_relative '../config/environment.rb'

spaghetti = Recipe.new("spaghetti")
elbin = User.new("Elbin")
luke = User.new("Luke")
tomato = Ingredient.new("tomato")
jared = User.new("Jared")
sean = User.new("Sean")
milk = Ingredient.new("milk")
cereal = Recipe.new("cereal")
pizza = Recipe.new("pizza")
cheese = Ingredient.new("cheese")
spaghetti_tomato = RecipeIngredient.new({recipe: spaghetti, ingredient: tomato})
cereal_milk = RecipeIngredient.new({recipe: cereal, ingredient: milk})
pizza_cheese = RecipeIngredient.new({recipe: pizza, ingredient: cheese})
seans_allergy = Allergen.new({user: sean, ingredient: milk})
lukes_allergy = Allergen.new({user: luke, ingredient: tomato})
jareds_allergy = Allergen.new({user: jared, ingredient: milk})
seans_cereal = RecipeCard.new({user: sean, recipe: cereal, ingredient: cereal_milk, date: "August 3rd, 2018", rating: 4})
jareds_cereal = RecipeCard.new({user:jared, recipe: cereal, ingredient: cereal_milk, date: "July 7th, 2018", rating: 3})
lukes_spaghetti = RecipeCard.new({user: luke, recipe: spaghetti, ingredient: spaghetti_tomato, date: "July 5th, 2018", rating: 2})
elbins_pizza = RecipeCard.new({user: elbin, recipe: pizza, ingredient: pizza_cheese, date: "September 3rd, 2019", rating: 5})


binding.pry
Recipe.most_popular
