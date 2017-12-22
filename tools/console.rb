require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

anna = Customer.new("anna" , "kallenborn")
drew = Customer.new("drew" , "overcash")
john = Customer.new("john" , "something")
andrea = Customer.new("andrea", "cardoza")
andrea2 = Customer.new("andrea", "test")
sweetgreen = Restaurant.new("sweetgreen")
chopt = Restaurant.new("chopt")
deli = Restaurant.new("deli")
sushi = Restaurant.new("sushi")
anna.add_review(sweetgreen, "great")
drew.add_review(chopt, "sososo")
john.add_review(deli, "yeah")
andrea.add_review(sushi, "yoooooo")





Pry.start
