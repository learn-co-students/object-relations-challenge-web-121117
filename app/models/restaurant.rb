class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # returns the first restaurant that matches name
  # iterate over @@all array and .find the restaurant that matches the given parameter
  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name if restaurant.name == name }
  end

  # returns an array of all reviews for that restaurant
  # iterate over Review.all array with .map and return all reviews under condition that review_instance.restaurant == self
  def reviews
    Review.all.map { |review_instance| review_instance if review_instance.restaurant == self }
  end

  # returns all of the customers who have written reviews of that restaurant
  # iterate over Review.all array with .map and return all customers(review_instance.customer) under condition that review_instance.retaurant == self
  def customers
    Review.all.map { |review_instance| review_instance.customer if review_instance.restaurant == self }
  end



end
