require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Surrey = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true)

Whistler = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false)

Yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 1260000,
  mens_apparel: true,
  womens_apparel: true)

@men_stores = Store.where("mens_apparel ='true'")
@men_stores.each do |name|
  puts "#{name.name} with revenue #{name.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = 'true' and annual_revenue < 1000000")
@womens_stores.each do |name|
  puts "#{name.name} with revenue #{name.annual_revenue}"
end