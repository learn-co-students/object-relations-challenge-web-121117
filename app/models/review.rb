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
