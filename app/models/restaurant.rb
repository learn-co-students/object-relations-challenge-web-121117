class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |rest|
      rest.name == name
    end
  end

  def reviews
    all_rev = Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def customers
    all_cust = Review.all.select do |rev|
      rev.restaurant == self
    end
    all.cust.map {|r| r.customer}
  end

end
