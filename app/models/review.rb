#Review as the join table contains all the info for customers and restaurants
#We don't care about customers or restaurants with no reviews

class Review
  attr_reader :customer, :restaurant, :content

  @@all = []

  def initialize(customer_instance, restaurant_instance, review_content)
    @customer = customer_instance
    @restaurant = restaurant_instance
    @content = review_content
  end

  def save
    @@all << self
  end

  def self.create(customer_instance, restaurant_instance, review_content)
    new_review = self.new(customer_instance, restaurant_instance, review_content)
    new_review.save
  end

  def self.all
    @@all
  end

end
