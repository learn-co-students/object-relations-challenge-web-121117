require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

Customer.new("Alan", "Kay")
Customer.new("John", "Doe")
Customer.new("Anita", "Borg")

5.times do |i|
  Restaurant.new("Restaurant #{i}")
end

Customer.all.each do |u|
  puts u.first_name
end

Restaurant.all.each do |p|
  puts "#{p.name}"
end



binding.pry
