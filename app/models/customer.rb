# Customer.all
#  + should return all of the customers
# + Customer.find_by_name(name)
#  + given a string of a full name, returns the first customer whose full name matches
# + Customer.find_all_by_first_name(name)
#  + given a string of a first name, returns an array containing all customers with that first name
# + Customer.all_names
#  + should return an array of all of the customer full names
# + Customer#add_review(restaurant, content)
#  + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  @@all_first_names = []
  @@full_name = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = "#{@first_name} #{@last_name}"
    @@full_name << @full_name
    @@all_first_names << @first_name
    @@all << @full_name
  end
# works
  def self.all
    @@all
  end
# Works
  def self.find_by_name(name)
    # operate on @@all - find FIRST customer with matching full name
    @@all.find do |name_item|
      name_item == name
    end
  end
  # works
  def self.all_names
    @@all
  end
# works
  def self.find_all_by_first_name(first_name)
    @@all_first_names.select do |first_name_item|
      first_name_item == first_name
    end
  end
  # works
  def add_review(restaurant_instance, content)
    new_review = Review.new(self,restaurant_instance,content)
  end

  def full_name
    full_name_string = "#{first_name} #{last_name}"
  end
end
