require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kevin = Customer.create("Kevin", "Randles")
kevin2 = Customer.create("Kevin", "Smith")
oleg = Customer.create("Oleg", "Chursin")
drew = Customer.create("Drew", "Overcash")

robertas = Restaurant.create("Roberta's")
mcdonalds = Restaurant.create("McDonald's")
halal = Restaurant.create("Halal Guys")

kevin.add_review(robertas, "Great pizza!!")
kevin.add_review(mcdonalds, "Only when I'm in a hurry")
kevin.add_review(halal, "best cheap lunch in the city")

r1 = oleg.add_review(mcdonalds, "It sucks")
r2 = kevin2.add_review(mcdonalds, "Amazing!!")
r3 = drew.add_review(robertas, "No one goes there anymore, it's too crowded")


Pry.start
