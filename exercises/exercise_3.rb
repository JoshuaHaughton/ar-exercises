require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Total amount of stores to start (Should be 3)
puts Store.all.count

@store3 = Store.find(3)

# Delete store
@store3.destroy

# There should be 2 stores left
puts Store.all.count
