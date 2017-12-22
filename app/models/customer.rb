class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.find_by_name(full_name)
    f_name = full_name.split(" ")[0]
    l_name = full_name.split(" ")[1]
    self.all.find do |customer|
      customer.first_name == f_name && customer.last_name == l_name
    end
  end

  def self.find_all_by_first_name(f_name)
    self.all.select do |customer|
      customer.first_name == f_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content)
    rev = Review.new(self, restaurant)
    rev.review = content
  end
end
