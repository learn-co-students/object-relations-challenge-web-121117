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
    self.all.select {|restaurant_instance| restaurant_instance.name == name}
  end

  def reviews
    Review.all.select{|review_instance| review_instance.restaurant == self}
  end

  def customers
    # reviews = Review.all.select{|review_instance| review_instance.restaurant == self}
    reviews.map {|review| review.customer}
  end

end
