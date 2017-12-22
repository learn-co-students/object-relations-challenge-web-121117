class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.create(name)
    new_restaurant = Restaurant.new(name)
    new_restaurant.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    all_reviews = Review.all
    relevent_reviews = all_reviews.select do |restuarant|
      restaurant.restaurant.name == self
    end
    relevent_reviews.map do |rr|
      rr.review
    end
  end

  def customers
    all_customers = Review.all
    relevent_customers = all_customers.select do |customer|
      customer.restaurant.name == self
    end
    relevent_customers.map do |rc|
      rc.customer
    end
  end
end
