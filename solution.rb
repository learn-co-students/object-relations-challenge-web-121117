# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def self.create(first_name, last_name)
    new_customer = Customer.new(first_name, last_name)
    new_customer.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(first_name, last_name)
    self.all.select do |full_name|
      full_name.first_name == first_name && full_name.last_name == last_name
    end
  end

  def self.find_all_by_first_name(searched_first_name)
    self.all.select do |name|
      name.first_name == searched_first_name
    end
  end

  def self.all_names

  end

  def add_review(review, restaurant)
    new_review = Review.create(review, restaurant)
    new_review.customer = self
  end

end


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

class Review
  attr_accessor :review, :restaurant, :customer

  @@all = []

  def initialize(review, restuarant, customer)
    @review = review
    @restuarant = restaurant
    @customer = customer
  end

  def self.create(review, restaurant, customer)
    new_review = Review.new(review, restuarant, customer)
    new_review.save
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def customer

  end

  def restaurant
  end

end
