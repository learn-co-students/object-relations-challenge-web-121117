require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#customers
cust1 = Customer.new('first1', 'last1')
cust2 = Customer.new('first2', 'last2')
cust3 = Customer.new('first3', 'last3')
cust3 = Customer.new('first1', 'last4')

#restaurants
rest1 = Restaurant.new('rest1')
rest2 = Restaurant.new('rest2')
rest3 = Restaurant.new('rest3')

#reviews
cust1.add_review(rest1, 'content1')
cust1.add_review(rest2, 'content2')
cust2.add_review(rest3, 'content3')
cust3.add_review(rest1, 'content4')

#need to fix create and save methods


Pry.start
