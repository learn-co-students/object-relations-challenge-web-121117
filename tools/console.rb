require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

alan = Customer.new("Alan", "Kay")
john = Customer.new("John", "Doe")
anita = Customer.new("Anita", "Borg")


r1 = Restaurant.new("Restaurant 1")
r2 = Restaurant.new("Restaurant 2")
r3 = Restaurant.new("Restaurant 3")


Customer.all.each do |u|
  puts u.first_name
end

Restaurant.all.each do |p|
  puts "#{p.name}"
end


Pry.start
