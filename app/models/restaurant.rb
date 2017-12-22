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
    self.all.select {|restaurant_name| restaurant_name.name == name}
  end

  def reviews
  end

  def customers
    reviews = Review.all
    restaurant_reviews = reviews.select {|review| review.restaurant == self}
  end

end
