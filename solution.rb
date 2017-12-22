class Customer
  attr_accessor :first_name, :last_name, :reviews
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @reviews = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select do |full_name|
    @first_name && @last_name == self.first_name && self.last_name
  end
end


def self.find_all_by_first_name(name)
  self.all.select do |first_name| #iterate through our all all array
  self.first_name == first_name
 end
end

def add_review (restaurant, content)
  @review << review
  review.customer = self
end

#given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
end
# Please copy/paste all three classes into this file to submit your solution!

class Review

  attr_accessor :restaraunt, :customer
  @@all = []

  def initialize(restaurant, customer)
    @restaurant = restaurant
    @customer  = customer
    @@all << self
  end

  def self.all
    @@all #Returns all of the reviews
  end

  def customer
    Customer.all.collect do |customer|
      review.cusomter
    end
  end

  def restaurant
    Restaurant.all.collect do |restaurant|
      review.restaurant
    end
  end

end

class Restaurant
  attr_accessor :name, :customer, :reviews
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |name|
     self.name == self
   end
 end

 def reviews
   Review.all.collect do |restaurant_review|
     restaurant_review.restaurant == self
   end
 end

 def customers
    Review.all.select do |customer|
     customer == self.customer
   end
 end


end
