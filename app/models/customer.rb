#Customer is selfish and only cares about himself
#Review should store an array of customers

class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    all_customers = Review.all.map{ |review_instance| review_instance.customer}
    all_customers.uniq
  end

  def self.find_by_name(name)
    name_array = name.split(" ")
    sought_customer = self.all.select { |customer| customer.first_name == name_array[0] && customer.last_name == name_array[1]}
    sought_customer.first
  end

  def self.find_all_by_first_name(name)
    self.all.select { |customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map{ |customer| "#{customer.first_name} #{customer.last_name}"}
  end

  def add_review(restaurant, content)
    Review.create(self, restaurant, content)
  end

end
