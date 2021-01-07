require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
puts "store name: #{@store1.name} and store annual revenue: #{@store1.annual_revenue}"

@store2 = Store.find_by(id: 2)
puts "store name: #{@store2.name} and store annual revenue: #{@store2.annual_revenue}"

@store1.update(name: "Toronto", annual_revenue: "500000")
puts "store name: #{@store1.name}, store annual revenue: #{@store1.annual_revenue}, store has men's apparel #{@store1.mens_apparel} and store has women's apparel #{@store1.womens_apparel}"