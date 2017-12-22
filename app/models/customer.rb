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
