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
