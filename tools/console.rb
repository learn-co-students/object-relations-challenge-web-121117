require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

applebees = Restaurant.create("Applebees")
chilis = Restaurant.create("Chilis")
ihop = Restaurant.create("iHop")

sheila_simpson = Customer.create("Sheila", "Simpson")
suzy_sampson = Customer.create("Suzy", "Sampson")
billy_baldwin = Customer.create("Billy", "Baldwin")
bobby_burdict = Customer.create("Bobby", "Burdict")

# suzy_sampson.add_review("The food was TERRIBLE", applebees)

Pry.start
