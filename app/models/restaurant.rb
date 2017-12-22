class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    r_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    r_reviews.map do |r|
      r.review
    end
  end

  def customers
    r_customers = Review.all.select do |customer|
      customer.restaurant == self
    end
    r_customers.map do |c|
      c.customer
    end
  end
end
