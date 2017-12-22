class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.create(name)
    new_restaurant = Restaurant.new(name)
    new_restaurant.save
    new_restaurant
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    all.detect { |restaurant| restaurant.name == name }
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map(&:customer)
  end
end
