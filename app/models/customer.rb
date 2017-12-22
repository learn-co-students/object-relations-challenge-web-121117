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
    name_array = name.split(" ")
    Customer.all.select do |fullName|
      name_array[0] == fullName.first_name[0] && name_array[1] == fullName.last_name[1]
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.map do |firstName|
      firstName == name
    end
  end

  def self.all_names
    @@all
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content, self)  
  end

end
