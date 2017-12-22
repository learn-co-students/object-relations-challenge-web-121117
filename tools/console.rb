require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

def reload
  load 'config/environment.rb'
end


cust_1 = Customer.new("Matt","Welch")
cust_2 = Customer.new("Walter","Sobchak")
cust_3 = Customer.new("Bob","Santini")

rest_1 = Restaurant.new("Cafe One")
rest_2 = Restaurant.new("Cafe Two")

cust_1.add_review(rest_1, "good")
cust_1.add_review(rest_2, "so-so")
cust_2.add_review(rest_1, "aight")
cust_3.add_review(rest_2, "okay")




Pry.start
