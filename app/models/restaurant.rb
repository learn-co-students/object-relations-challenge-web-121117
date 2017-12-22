class Restaurant
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
  end

  def self.create(name)
    new_customer = self.new(name)
    new_customer.save
  end

  def self.find_by_name(name_string)
    self.all.select do |restaurant_object|
      restaurant_object.name.downcase == name_string.downcase
    end
  end

  def reviews
    Review.all.select do |review_object|
      review_object.restaurant == self
    end
  end

  def customers
    hold = []
    self.reviews.each do |review_object|
      hold << review_object.customer
    end
    hold.uniq
  end

  def save
    @@all << self
    self
  end

  def self.all
      @@all
  end
end
