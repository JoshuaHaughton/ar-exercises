require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where("mens_apparel = true")

# Loops through each store in the database and 
# outputs the name and annual revenue
i = 0
while i < @mens_stores.length
   store = Store.find(@mens_stores[i].id)
    puts "#{store.name} has an annual revenue of: $#{store.annual_revenue}."
    i += 1
end

@unprofitable_womens_apparel = Store.where("womens_apparel = true AND annual_revenue < 1000000")

puts "-----"

j = 0
while j < @unprofitable_womens_apparel.length
   store = Store.find(@unprofitable_womens_apparel[j].id)
    puts "#{store.name} has an annual revenue of: $#{store.annual_revenue}."
    j += 1
end
