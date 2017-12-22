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


  # given a string of a full name, returns the first customer whose full name matches
  # iterate over @@all with .find and return customer name that matches the parameter
  # broken - desn't work
  def self.find_by_name(full_name)
      all.find { |customer| customer if customer == full_name }
  end


  # returns an array containing all customers with that first name
  # iterate over @@all array
  # I know I am repeating myself here and should be using .find_by_name method above
  def self.find_all_by_first_name(first_name)
    all.find { |customer| customer.first_name if customer.first_name == self}
  end

  # return an array of all of the customer full names
  # iterate over @@all array with .map and return customer full names
  # returns an array of customer instances
  def self.all_names
    self.all.map { |customer| customer }
  end

  # creates a new review and associates it with that customer and that restaurant
  # creates a new instance in the Review join class. This class will be serving as a single source of truth for Restaurant and User.
  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content, self)
  end

end
