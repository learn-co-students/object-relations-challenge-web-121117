class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.create(first_name, last_name)
    new_customer = Customer.new(first_name, last_name)
    new_customer.save
    new_customer
  end

  def save
    @@all << self
    @@all
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.detect { |customer| customer.full_name == name }
  end

  def self.find_all_by_first_name(name)
    all.select { |customer| customer.first_name == name }
  end

  def self.all_names
    all.map(&:full_name)
  end

  def add_review(restaurant, content)
    new_review = Review.create(self, restaurant)
    new_review.add_content(content)
    new_review
  end
end

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.create(name)
    new_restaurant = Restaurant.new(name)
    new_restaurant.save
    new_restaurant
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    all.detect { |restaurant| restaurant.name == name }
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map(&:customer)
  end
end

class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
  end

  def self.create(customer, restaurant)
    new_review = Review.new(customer, restaurant)
    new_review.save
    new_review
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_content(words)
    self.content = words
  end
end
