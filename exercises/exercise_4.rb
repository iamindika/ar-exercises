require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
puts "store name: #{store.name}, store annual revenue: #{store.annual_revenue}, store has men's apparel #{store.mens_apparel} and store has women's apparel #{store.womens_apparel}"

store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
puts "store name: #{store.name}, store annual revenue: #{store.annual_revenue}, store has men's apparel #{store.mens_apparel} and store has women's apparel #{store.womens_apparel}"

store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
puts "store name: #{store.name}, store annual revenue: #{store.annual_revenue}, store has men's apparel #{store.mens_apparel} and store has women's apparel #{store.womens_apparel}"

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "store name: #{store.name}, store annual revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where("annual_revenue < 1000000", womens_apparel: true)
@womens_stores.each do |store|
  puts "store name: #{store.name}, store annual revenue: #{store.annual_revenue}"
end
