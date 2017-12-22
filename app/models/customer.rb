class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def self.create(first_name, last_name)
    new_customer = Customer.new(first_name, last_name)
    new_customer.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(first_name, last_name)
    self.all.select do |full_name|
      full_name.first_name == first_name && full_name.last_name == last_name
    end
  end

  def self.find_all_by_first_name(searched_first_name)
    self.all.select do |name|
      name.first_name == searched_first_name
    end
  end

  def self.all_names

  end

  def add_review(review, restaurant)
    new_review = Review.create(review, restaurant)
    new_review.customer = self
  end

end
