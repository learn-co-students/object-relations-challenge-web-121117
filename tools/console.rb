require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Pry.start

c1 = Customer.new("Lindsay", "Criswell")
c2 = Customer.new("Ian", "Port")

rest1 = Restaurant.new("Chez Panisse")
rest2 = Restaurant.new("Chipotle")

rev1 = Review.new("AMAZING", c1, rest1)
rev2 = Review.new("Meh", c2, rest2)
