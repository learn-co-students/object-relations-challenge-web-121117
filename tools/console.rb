require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

josh = Customer.new("Josh", "Ticzon")
andrea = Customer.new("Andrea", "C")
anna = Customer.new("Anna", "Kb")
john = Customer.new("John", "Gi")
matt = Customer.new("Matt", "Welch")

mcd = Restaurant.new("McD")
bk = Restaurant.new("Burger king")
chipotle = Restaurant.new("Chipotle")

review1 = Review.new(mcd, "great", josh)
review2 = Review.new(bk, "just ok", josh)
review3 = Review.new(chipotle, "good", anna)
review4 = Review.new(bk, "ewww", matt)
review5 = Review.new(chipotle, "Mmm", matt)
review6 = Review.new(mcd, "GOOD!", josh)
review7 = Review.new(bk, "not good", matt)




Pry.start
