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

@store1.employees.create(first_name: "Mike", last_name: "Douglas", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "James", hourly_rate: 23)
@store1.employees.create(first_name: "Fred", last_name: "Armisen", hourly_rate: 43)
@store1.employees.create(first_name: "Jack", last_name: "Jones", hourly_rate: 23)
@store1.employees.create(first_name: "Jane", last_name: "Dean", hourly_rate: 12)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 32)

@store2.employees.create(first_name: "Erin", last_name: "Lawlor", hourly_rate: 43)
@store2.employees.create(first_name: "Archie", last_name: "Bunker", hourly_rate: 23)
@store2.employees.create(first_name: "Lisa", last_name: "Griffin", hourly_rate: 54)
@store2.employees.create(first_name: "Homer", last_name: "Simpson", hourly_rate: 23)
@store2.employees.create(first_name: "Bart", last_name: "Sampson", hourly_rate: 12)
@store2.employees.create(first_name: "Maggie", last_name: "Griffson", hourly_rate: 21)
@store2.employees.create(first_name: "Marge", last_name: "Simpith", hourly_rate: 34)

