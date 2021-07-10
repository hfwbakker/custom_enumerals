require_relative "enumerables.rb"

["catward", "meownica", "Deja", "HENRI"].my_each {|i| puts i}

fruits = ["apple", "banana", "strawberry", "pineapple"]
numbers = [1,2,3,4,5,6]

print("my_each_with_index:\n")
fruits.my_each_with_index { |fruit, index| puts fruit if index.even? }

print("each_with_index:\n")
fruits.each_with_index { |fruit, index| puts fruit if index.even? }

print("select: \n") 
p numbers.select { |n| n.even? }

print("my_select: \n")
p numbers.my_select { |n| n.even? }