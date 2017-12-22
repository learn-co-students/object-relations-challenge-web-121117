class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def self.create(first_name, last_name)
    new_customer = self.new(first_name, last_name)
    new_customer.save
  end

  def add_review(restaurant, content)
    new_review = Review.create(content, self, restaurant)
    new_review.save
  end

  def self.find_by_name(name)
    name_split = name.split(" ")
    self.all.select do |customer_object|
      customer_object.first_name == name_split[0] && customer_object.last_name == name_split[1]
    end
  end

  def self.find_all_by_first_name(name)
    name_split = name.split(" ")
    self.all.select do |customer_object|
      customer_object.first_name == name_split[0]
    end
  end

  def self.all_names
    full_names = []
    self.all.each do |customer_object|
      full_names << customer_object.full_name
    end
    full_names
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def save
    @@all << self
    self
  end

  def self.all
      @@all
  end
end
