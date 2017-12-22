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
