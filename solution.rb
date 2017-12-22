class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    split_name = name.split(" ")
    first = split_name[0]
    last = split_name[1]

    self.all.find do |customer|
      customer.first_name == first && customer.last_name == last
    end
  end

  def self.find_all_by_first_name(name)
    self.all.find do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    new_review = Review.new(content, self, restaurant)
    new_review
  end

end


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
    self.all.find do |rest|
      rest.name == name
    end
  end

  def reviews
    all_rev = Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def customers
    all_cust = Review.all.select do |rev|
      rev.restaurant == self
    end
    all.cust.map {|r| r.customer}
  end

end


class Review
  attr_reader :customer, :restaurant
  attr_reader :content

  @@all = []

  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.customer
  end

  def restaurant
  self.restaurant
  end
  
end
