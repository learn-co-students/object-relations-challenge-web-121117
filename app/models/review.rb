class Review
  attr_reader :customer, :restaurant, :reviews
  attr_accessor :content

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
