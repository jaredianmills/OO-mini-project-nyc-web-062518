class Allergen

  @@all = []

  attr_reader :ingredient, :user

  def initialize(args={})
    @ingredient = args[:ingredient]
    @user = args[:user]
    @@all << self
  end

  def self.all
    @@all
  end

end
