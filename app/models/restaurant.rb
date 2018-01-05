# Restaurant.all
# returns an array of all restaurants
#
# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant
# that matches
#
# Restaurant#reviews
# returns an array of all reviews for that restaurant
#
# Restaurant#customers
# should return all of the customers who have written reviews of that
# restaurant.

class Restaurant

  attr_accessor :name, :review, :customer
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |rest|
      rest.name == name
    end
  end

  def reviews
    Review.all.map do |review|
      if review.restaurant == bk
        review.content
      end
    end
  end

  def customers
    self.all.select do |rest|
      rest.customer == self
    end
  end

end
