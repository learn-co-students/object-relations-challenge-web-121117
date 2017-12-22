class Review
  attr_accessor :customer, :restaurant, :review
  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant

    @@all << self
  end
end
