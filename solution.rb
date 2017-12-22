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

  def self.find_by_name(name)
    self.all.select {|cutomer_instance| cutomer_instance.full_name == name}
  end

  def self.find_all_by_first_name(name)
    select_names = self.all.select{|customer| customer.first_name == name}
    select_names.map {|customer| customer.full_name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def customer_add_review
  end
end


class Review

  attr_reader :customer, :restaurant

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
    self.all.select {|restaurant_name| restaurant_name.name == name}
  end

  def reviews
  end

  def customers
    reviews = Review.all
    restaurant_reviews = reviews.select {|review| review.restaurant == self}
  end

end
