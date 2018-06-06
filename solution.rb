# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end


  # given a string of a full name, returns the first customer whose full name matches
  # iterate over @@all with .find and return customer name that matches the parameter
  # broken - desn't work
  def self.find_by_name(full_name)
      all.find { |customer| customer if customer == full_name }
  end


  # returns an array containing all customers with that first name
  # iterate over @@all array
  # I know I am repeating myself here and should be using .find_by_name method above
  def self.find_all_by_first_name(first_name)
    all.find { |customer| customer.first_name if customer.first_name == self}
  end

  # return an array of all of the customer full names
  # iterate over @@all array with .map and return customer full names
  # returns an array of customer instances
  def self.all_names
    self.all.map { |customer| customer }
  end

  # creates a new review and associates it with that customer and that restaurant
  # creates a new instance in the Review join class. This class will be serving as a single source of truth for Restaurant and User.
  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content, self)
  end

end



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


class Review

  attr_accessor :customer, :Restaurant
  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end
