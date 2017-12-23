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

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    review = Review.all
    restaurant_reviews = reviews.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|reviews| reviews.customer}
  end

end
