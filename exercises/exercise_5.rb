require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
 puts "Total Revenue #{total_revenue}"

@allStores = Store.all

@allStores.each do |store|
  puts "#{store.name} made #{store.annual_revenue}"
end

@list = Store.where("annual_revenue > 1000000")
  @list.each do |store|
    puts "#{store.name}"
  end