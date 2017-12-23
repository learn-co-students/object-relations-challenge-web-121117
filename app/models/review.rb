class Review

  attr_reader :customer, :restaurant, :content

  @@all = []

  def initialize(customer, restaurant, content=nil)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end


end
