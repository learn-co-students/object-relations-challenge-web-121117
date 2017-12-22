# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.find_by_name(full_name)
    f_name = full_name.split(" ")[0]
    l_name = full_name.split(" ")[1]
    self.all.find do |customer|
      customer.first_name == f_name && customer.last_name == l_name
    end
  end

  def self.find_all_by_first_name(f_name)
    self.all.select do |customer|
      customer.first_name == f_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content)
    rev = Review.new(self, restaurant)
    rev.review = content
  end
end

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

class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    r_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    r_reviews.map do |r|
      r.review
    end
  end

  def customers
    r_customers = Review.all.select do |customer|
      customer.restaurant == self
    end
    r_customers.map do |c|
      c.customer
    end
  end
end
