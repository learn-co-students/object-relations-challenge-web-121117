# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def self.create(first_name, last_name)
    new_customer = self.new(first_name, last_name)
    new_customer.save
  end

  def add_review(restaurant, content)
    new_review = Review.create(content, self, restaurant)
    new_review.save
  end

  def self.find_by_name(name)
    name_split = name.split(" ")
    self.all.select do |customer_object|
      customer_object.first_name == name_split[0] && customer_object.last_name == name_split[1]
    end
  end

  def self.find_all_by_first_name(name)
    name_split = name.split(" ")
    self.all.select do |customer_object|
      customer_object.first_name == name_split[0]
    end
  end

  def self.all_names
    full_names = []
    self.all.each do |customer_object|
      full_names << customer_object.full_name
    end
    full_names
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def save
    @@all << self
    self
  end

  def self.all
      @@all
  end
end

class Restaurant
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
  end

  def self.create(name)
    new_customer = self.new(name)
    new_customer.save
  end

  def self.find_by_name(name_string)
    self.all.select do |restaurant_object|
      restaurant_object.name.downcase == name_string.downcase
    end
  end

  def reviews
    Review.all.select do |review_object|
      review_object.restaurant == self
    end
  end

  def customers
    hold = []
    self.reviews.each do |review_object|
      hold << review_object.customer
    end
    hold.uniq
  end

  def save
    @@all << self
    self
  end

  def self.all
      @@all
  end
end


class Review


  attr_accessor :content, :customer, :restaurant

  @@all =[]

  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
  end

  def self.create(content, customer, restaurant)
    self.new(content, customer, restaurant)
  end

  def save
    @@all << self
    self
  end

  def self.all
      @@all
  end
end
