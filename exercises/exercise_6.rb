require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Kolamba Tantrege", last_name: "Indika", hourly_rate: 25)
@store2.employees.create(first_name: "Miller", last_name: "Joe", hourly_rate: 50)
@store2.employees.create(first_name: "Clarkson", last_name: "Kelly", hourly_rate: 35)
@store2.employees.create(first_name: "Murray", last_name: "Caroline", hourly_rate: 70)