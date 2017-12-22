class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all = []
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |one_restaurant| ######   PRY
      one_restaurant == name
    end
  end

  def reviews
    Review.all.map do |one_review|  #######  PRY
      binding.pry
      one_review == self
    end
  end

  def customers
    Review.all.map do |one_review|
      one_review == self.restaurant
    end
  end

end
