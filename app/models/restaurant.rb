# Build out the following methods on the restaurant class
#
# + Restaurant.all
#   + returns an array of all restaurants
# + Restaurant.find_by_name(name)
#   + given a string of restaurant name, returns the first restaurant that matches
# + Restaurant#reviews
#   + returns an array of all reviews for that restaurant
# + Restaurant#customers
#   + should return all of the customers who have written reviews of that restaurant.

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

  def self.find_by_name(name)
    # first restaurant that matches - use find
    @@all.find do |restaurant_item|
      restaurant_item == name
    end

  end
  def reviews
      relevant_review_instances = Review.all.select do |review_instance|
        binding.pry
      review_instance.restaurant == self
    end
        binding.pry
    relevant_reviews = relevant_review_instances.map do |rel_review_instance|
      rel_review_instance.review
    end
    relevant_reviews
  end

  def customers
    relevant_review_instances = Review.all.select do |review_instance|
      review_instance.restaurant == self
    end
    relevant_customer_array = relevant_review_instances.map do |rel_review_instance|
        rel_review_instance.customer
    end
    relevant_customer_array
  end

end
