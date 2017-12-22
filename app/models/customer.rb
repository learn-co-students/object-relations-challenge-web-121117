class Customer
  attr_reader :first_name, :last_name
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

  def self.find_by_name(full_name_string)
    @@all.find {|customer_instance| customer_instance.full_name == full_name_string}
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer_instance| customer_instance.first_name == name}
  end

  def self.all_names
    @@all.map do |customer_instance|
    customer_instance.full_name
    end
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant, content)
  end

end
