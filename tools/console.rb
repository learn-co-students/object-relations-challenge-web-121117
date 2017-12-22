require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

briana = Customer.new("Briana", "Baker")
briana2= Customer.new("Briana", "Roberts")
graham = Customer.new("Graham", "Milton")
graham2 = Customer.new("Graham", "McDillon")

restaurant1 = Restaurant.new("Por Fin")
restaurant2 = Restaurant.new("Bagel Shop")
restaurant3 = Restaurant.new("Fish Shop")

#added reviews from users
#has customer instance
#has restaurant instance

review1 = briana.add_review(restaurant1, "amazing")
review2 = briana.add_review(restaurant2, "the absolute worst")
review3 = graham.add_review(restaurant1, "just okay")
review4 = graham.add_review(restaurant2, "OMG SO DELICIOUS")
review5 = graham2.add_review(restaurant3, "I think this also works")


Pry.start
