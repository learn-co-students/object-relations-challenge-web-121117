class Customer
  attr_reader :first_name, :last_name
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

  def self.find_by_name(full_name_string)
    @@all.find {|customer_instance| customer_instance.full_name == full_name_string}
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer_instance| customer_instance.first_name == name}
  end

  def self.all_names
    @@all.map do |customer_instance|
    customer_instance.full_name
    end
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant, content)
  end

end

class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|restaurant_instance|restaurant_instance.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}
  end

end

class Review
  attr_reader :customer, :restaurant
  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
