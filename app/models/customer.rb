# Customer.all
# should return all of the customers

# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches

# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name

# Customer.all_names
# should return an array of all of the customer full names

# Customer#add_review(restaurant, content)
# given some content and a restaurant, creates a new review and associates
# it with that customer and that restaurant

class Customer

  attr_accessor :firstName, :lastName
  @@all = []

  def initialize(firstName, lastName)
    @firstName = firstName
    @lastName = lastName
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(fullname)
    name_array = fullname.split(" ")
    Customer.all.find do |person|
      person.firstName == name_array[0] && person.lastName == name_array[1]
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |person|
      person.firstName
    end
  end

  def self.all_names
    Customer.all.map do |person|
      "#{person.firstName} #{person.lastName}"
    end
  end

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end

end
