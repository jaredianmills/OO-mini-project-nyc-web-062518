class RecipeCard

  @@all = []
  attr_reader :user, :recipe, :ingredient, :date, :rating

  def initialize(args={})
    @user = args[:user]
    @ingredient = args[:ingredient]
    @date = args[:date]
    @rating = args[:rating]
    @recipe = args[:recipe]
    @@all << self
  end

  def self.all
    @@all
  end

  def date
    @date
  end

  def rating
    @rating.to_i
  end

  def user
    @user
  end

  def recipe
    @recipe
  end

end
