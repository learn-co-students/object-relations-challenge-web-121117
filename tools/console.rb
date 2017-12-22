require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

julien = Customer.new("Julien", "Tregoat")
julien2 = Customer.new("Julien","NotTregoat")
aanandi = Customer.new("Aanandi", "Aquino")
nemanja = Customer.new("Nemanja", "Drakulovic")

cafedu = Restaurant.new("Cafe Du Soleil")
pastis = Restaurant.new("Pastis")
frenchroast = Restaurant.new("French Roast")

julien.add_review(pastis, "Good")
julien.add_review(frenchroast, "Bad")
aanandi.add_review(cafedu, "Good")
aanandi.add_review(pastis, "Okay")
aanandi.add_review(frenchroast, "Bad")
nemanja.add_review(frenchroast, "Good")
nemanja.add_review(pastis, "Okay")
nemanja.add_review(cafedu, "Okay")

Pry.start
