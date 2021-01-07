require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
store = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
puts "store name: #{store.name}, store annual revenue: #{store.annual_revenue}, store has men's apparel #{store.mens_apparel} and store has women's apparel #{store.womens_apparel}"

store = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
puts "store name: #{store.name}, store annual revenue: #{store.annual_revenue}, store has men's apparel #{store.mens_apparel} and store has women's apparel #{store.womens_apparel}"

store = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
puts "store name: #{store.name}, store annual revenue: #{store.annual_revenue}, store has men's apparel #{store.mens_apparel} and store has women's apparel #{store.womens_apparel}"

puts "Number of stores: #{Store.count}"