#
# + Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that given review
# + Review#restaurant
#   + returns the restaurant for that given review

class Review

  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(customer_instance, restaurant_instance, content)
    @customer = customer_instance
    @restaurant = restaurant_instance
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end

end
