class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  @@names = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @@names << self.full_name
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    @@names.find {|name_array_item| name_array_item == name}
  end

  def self.find_all_by_first_name(name)
    @@names.select {|name_array_item| name_array_item.split[0] == name}
  end

  def self.all_names
    @@names
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant, content)
  end 
end
