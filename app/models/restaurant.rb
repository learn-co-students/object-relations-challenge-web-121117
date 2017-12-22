#Restaurant is selfish and only cares about itself
#Review should store an array of restaurants

class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    all_restaurants = Review.all.map{ |review_instance| review_instance.restaurant}
    all_restaurants.uniq
  end

  def self.find_by_name(name)
    sought_restaurant = self.all.select { |restaurant| restaurant.name == name}
    sought_restaurant.first
  end

  def reviews
    Review.all.select { |review| review.restaurant == self}
  end

  def customers
    all_customers = self.reviews.map { |review| review.customer }
    all_customers.uniq
  end

end
