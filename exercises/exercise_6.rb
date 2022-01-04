require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Naruto", last_name: "Uzumaki", hourly_rate: 80)
@store1.employees.create(first_name: "Lebron", last_name: "James", hourly_rate: 120)

@store2.employees.create(first_name: "John", last_name: "WicK", hourly_rate: 600)
@store2.employees.create(first_name: "Monkey D.", last_name: "Luffy", hourly_rate: 6000)
@store2.employees.create(first_name: "Tony", last_name: "Stark", hourly_rate: 601
)