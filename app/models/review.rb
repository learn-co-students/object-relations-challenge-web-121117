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
