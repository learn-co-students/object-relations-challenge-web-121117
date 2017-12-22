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
    self.all.select {|cutomer_instance| cutomer_instance.full_name == name}
  end

  def self.find_all_by_first_name(name)
    select_names = self.all.select{|customer| customer.first_name == name}
    select_names.map {|customer| customer.full_name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def customer_add_review
  end 
end
