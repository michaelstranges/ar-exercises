require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'



# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { :greater_than => 0 }
  validates :annual_revenue, numericality: true, presence: true

  def annual_revenue_must_be_greater_than_zero
    if annual_revenue < 0
      errors.add(:annual_revenue, "must be greater than 0")
    end
  end
end

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }

end

puts "Exercise 7"
puts "----------"

puts "Give me a store name"
store_name = gets.chomp
#store6 = Store.new(name: store_name, annual_revenue: -45) #works!
store6 = Store.new(name: store_name) #works!

store6.valid?
store6.errors.messages
puts store6.errors.messages
store6.save