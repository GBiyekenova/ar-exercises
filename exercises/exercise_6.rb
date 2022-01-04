require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

puts Store.has_many :employees
puts Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jessie", last_name: "Lang", hourly_rate: 60)

@store2.employees.create(first_name: "Adam", last_name: "Sing", hourly_rate: 60)
@store2.employees.create(first_name: "Bob", last_name: "Adams", hourly_rate: 60)