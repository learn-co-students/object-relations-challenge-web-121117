# Please copy/paste all three classes into this file to submit your solution!

# (づ｡◕‿‿◕｡)づ    ༼ つ ◕_◕ ༽つ

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  # def self.create(first_name, last_name)        #not working right now
  #   c = Customer.new(first_name, last_name)     #custs saving as array.. =/
  #   c.save
  # end
  #
  # def save
  #   @@all << self
  # end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant)
    new_review.content = content
  end
end

class Review

  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(customer, restaurant)
    @content = nil
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

  # def self.create(name)           #not working right now
  #   r = Restaurant.new(name)      #saving each as array.... why?
  #   r.save
  # end
  #
  # def save
  #   @@all << self
  # end

  def reviews
    relevant_reviews = Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    relevant_customers = Review.all.select do |review|
      review.restaurant == self
    end
    relevant_customers.map do |relevant_customer|
      relevant_customer.customer
    end
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
