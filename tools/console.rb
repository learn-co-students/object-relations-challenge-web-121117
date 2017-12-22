require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

n_drakulovic = Customer.new("Nemanja","Drakulovic")
n_cvetkovic = Customer.new("Nemanja","Cvetkovic")
t_gojkovic = Customer.new("Teodora","Gojkovic")
n_todorovic = Customer.new("Nemanja","Todorovic")

burger_place = Restaurant.new("Burger Place")
pizza_place = Restaurant.new("Pizza Place")

n_drakulovic.add_review(burger_place, "Bad")
n_cvetkovic.add_review(burger_place, "Good")
t_gojkovic.add_review(burger_place,"Great")

Pry.start
