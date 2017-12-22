require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.create("Homer", "Simpson")
c2 = Customer.create("Bart", "Simpson")
c3 = Customer.create("Lisa", "Simpson")
c4 = Customer.create("Bart", "Smith")
c5 = Customer.create("Bart", "Smith")

rest1 = Restaurant.create("Moes")
rest2 = Restaurant.create("Donut Place")
rest3 = Restaurant.create("Moes")

r1 = Review.create(c1, rest1, "sdfsdf")
r3 = Review.create(c3, rest1, "sdfsdf")
r2 = Review.create(c2, rest2, "sdfsdf")
r1 = Review.create(c4, rest2, "sdfsdf")

Pry.start
