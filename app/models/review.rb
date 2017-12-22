class Review
  attr_accessor :review, :restaurant, :customer

  @@all = []

  def initialize(review, restuarant, customer)
    @review = review
    @restuarant = restaurant
    @customer = customer
  end

  def self.create(review, restaurant, customer)
    new_review = Review.new(review, restuarant, customer)
    new_review.save
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def customer

  end

  def restaurant
  end

end
