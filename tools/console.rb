require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#SEED TEST CUSTOMERS

mark = Customer.new("Mark", "Bello")
mark2 = Customer.new("Mark", "Zuckerberg")
ollie = Customer.new("Oliver", "Morrison")

#SEED TEST RESTAURANTS

palm = Restaurant.new("Palm Steakhouse")
stickys = Restaurant.new("Sticky's Finger Joint")

#SEED TEST REVIEWS CONTENT

palm_content_mark = "Some good ass food"
palm_content_ollie = "Mark was right"
stickys_content_ollie = "Good chicken"

#SEED THE ACTUAL REVIEWS

mark.add_review(palm, palm_content_mark)
mark2.add_review(palm, palm_content_mark)
ollie.add_review(palm, palm_content_ollie)
ollie.add_review(stickys, stickys_content_ollie)

#TEST THE METHODS

Customer.all

Customer.find_by_name("Mark Bello")
Customer.all_names

Restaurant.all
Restaurant.find_by_name("Palm Steakhouse").reviews


Pry.start
