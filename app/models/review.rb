class Review
  attr_reader :customer, :restaurant
  attr_reader :content

  @@all = []

  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
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
