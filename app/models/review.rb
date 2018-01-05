## Review.all
## returns all of the reviews

# Review#customer
# returns the customer for that given review

# Review#restaurant
# returns the restaurant for that given review

class Review

  attr_accessor :customer, :restaurant, :content
  @@all = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end


end
