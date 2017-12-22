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

  # def self.create(name)           #not working right now
  #   r = Restaurant.new(name)      #saving each as array.... why?
  #   r.save
  # end
  #
  # def save
  #   @@all << self
  # end

  def reviews
    relevant_reviews = Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    relevant_customers = Review.all.select do |review|
      review.restaurant == self
    end
    relevant_customers.map do |relevant_customer|
      relevant_customer.customer
    end
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
