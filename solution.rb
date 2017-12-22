#BEGIN CLASS

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
    self.all.select {|restaurant_instance| restaurant_instance.name == name}
  end

  def reviews
    Review.all.select{|review_instance| review_instance.restaurant == self}
  end

  def customers
    # reviews = Review.all.select{|review_instance| review_instance.restaurant == self}
    reviews.map {|review| review.customer}
  end

end

#BEGIN CLASS

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
    name_arr = name.split(" ")
    first_name = name_arr[0]
    last_name = name_arr[1]
    self.all.select do |customer_instance|
      customer_instance.first_name == first_name && customer_instance.last_name == last_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer_instance| customer_instance.first_name == name}
  end

  def self.all_names
    self.all.map do |customer_instance|
      customer_instance.first_name + " " + customer_instance.last_name
    end
  end

  def add_review(restaurant, content)
    #MAKES A NEW Review
    #associates it with that customer AND that restuarant
    new_review = Review.new(customer= self, restaurant, content)
  end

end

#BEGIN CLASS

class Review

  @@all = []

  attr_accessor :customer, :restaurant, :content

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
