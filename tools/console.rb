require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end

cust1 = Customer.create("joseph","lawson")
cust2 = Customer.create("chelsea","lawson")
cust3 = Customer.create("drew","brees")
cust4 = Customer.create("joseph","whoa")
restaurant1 = Restaurant.create("GW Fins")
restaurant2 = Restaurant.create("Mcdonalds")
restaurant3 = Restaurant.create("Cafe instanbul")
restaurant4 = Restaurant.create("The porch")
review_content1 = "Super cool place to eat."
review_content2 = "absolutly horrible."
review_content3 = "nice vibes."
review_content4 = "wowowowowowow super impressed."

cust1.add_review(restaurant1,review_content3)
cust2.add_review(restaurant1,review_content2)
cust3.add_review(restaurant2,review_content1)
cust4.add_review(restaurant3,review_content2)
cust1.add_review(restaurant4,review_content4)

Customer.find_by_name(cust3.full_name)
Customer.find_all_by_first_name("joseph")


Pry.start
