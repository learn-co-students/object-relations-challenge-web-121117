# Please copy/paste all three classes into this file to submit your solution!

class Customer

  #Customer is selfish and only cares about himself
  #Review should store the customers

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    all_customers = Review.all.map{ |review_instance| review_instance.customer}
    all_customers.uniq
  end

  def self.find_by_name(name)
    name_array = name.split(" ")
    sought_customer = self.all.select { |customer| customer.first_name == name_array[0] && customer.last_name == name_array[1]}
    sought_customer.first
  end

  def self.find_all_by_first_name(name)
    self.all.select { |customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map{ |customer| "#{customer.first_name} #{customer.last_name}"}
  end

  def add_review(restaurant, content)
    Review.create(self, restaurant, content)
  end

end

class Review

  #Review as the join table contains all the info for customers and restaurants
  #We don't care about customers or restaurants with no reviews

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

class Restaurant

  #Restaurant is selfish and only cares about itself
  #Review should store the restaurants

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
