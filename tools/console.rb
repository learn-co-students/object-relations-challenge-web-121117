require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kenny = Customer.new("Kenny", "Hom")
ken = Customer.new("Kenny", "Ham")

chipotle = Restaurant.new("Chipotle")
content = "You gave me diarrhea"

kenny.add_review(chipotle, content)

Pry.start
