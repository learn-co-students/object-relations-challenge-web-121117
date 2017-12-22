# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restuarant, content)
    Review.create(self, restuarant, content)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(first_name, last_name)
    new_customer = Customer.new(first_name, last_name)
    new_customer.save
    new_customer
  end

  def self.find_by_name(full_name)
    Customer.all.find { |customer_inst| customer_inst.full_name == full_name }
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.select { |customer_inst| customer_inst.first_name == first_name }
  end

  def self.all_names
    Customer.all.map { |customer_inst| customer_inst.full_name}
  end

end

#############

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select { |review_inst| review_inst.restaurant == self}
  end

  def customers
    relavent_reviews = Review.all.select { |review_inst| review_inst.restaurant == self}
    relavent_reviews.map {|review_inst| review_inst.customer }
  end

  def save
    @@all << self
  end

  def self.create(name)
    new_rest = Restaurant.new(name)
    new_rest.save
    new_rest
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find { |rest_inst| rest_inst.name == name }
  end

end

############

class Review
    @@all = []

    attr_reader :customer, :restaurant
    attr_accessor :content

    def initialize(customer, restaurant, content)
      @customer = customer
      @restaurant = restaurant
      @content = content
    end

      def save
        @@all << self
      end

      def self.create(customer, restaurant, content)
        new_rev = Review.new(customer, restaurant, content)
        new_rev.save
        new_rev
      end

    def self.all
      @@all
    end
end
