require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tania = Customer.new("tania", "aparicio")
tania1 = Customer.new("tania", "aparicio")
tania2 = Customer.new("tania", "aparicio")
han = Customer.new("han", "solo")
luke = Customer.new("luke", "skywalker")
han2 = Customer.new("han", "skywalker")
luke2 = Customer.new("luke", "solo")


caffe21 = Restaurant.new("caffe21")
caffe22 = Restaurant.new("caffe22")
caffe23 = Restaurant.new("caffe23")


rev1 = Review.new(tania, caffe21)
rev2 = Review.new(han, caffe21)
rev3 = Review.new(luke, caffe21)
rev4 = Review.new(tania, caffe23)
rev5 = Review.new(han, caffe22)
rev6 = Review.new(luke, caffe23)

Pry.start
