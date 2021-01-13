require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_have_at_least_one_mens_or_womens_apparel

  def must_have_at_least_one_mens_or_womens_apparel
    if mens_apparel || womens_apparel
      errors.add(:apparel, "must include mens or womens apparel")
    end
  end

end

puts "Enter store name: "
store_name = gets.chomp

store = Store.new(name: store_name)
store.save

puts "Errors: #{store.errors.size}"
store.errors.each do |error|
  puts "Error: #{error}"
end
