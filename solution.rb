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
    name_array = name.split(" ")
    Customer.all.select do |fullName|
      name_array[0] == fullName.first_name[0] && name_array[1] == fullName.last_name[1]
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.map do |firstName|
      firstName == name
    end
  end

  def self.all_names
    @@all
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end

end


class Review

  attr_accessor :restaurant, :content, :customer
  @@all = []

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end

end

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all = []
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |one_restaurant| ######   PRY
      one_restaurant == name
    end
  end

  def reviews
    Review.all.map do |one_review|  #######  PRY
      binding.pry
      one_review == self
    end
  end

  def customers
    Review.all.map do |one_review|
      one_review == self.restaurant
    end
  end

end
