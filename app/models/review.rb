class Review

  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant  
  end

  def self.create(customer, restaurant)
    new_review = Review.new(customer, restaurant)
    new_review.save
    new_review
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_content(words)
    self.content = words
  end
end

