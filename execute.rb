require_relative "enumerables.rb"

fruits = ["apple", "banana", "strawberry", "pineapple"]
numbers = [1, 2, 3, 4, 5, 6]
names = ["catward", "meownica", "Deja", "HENRI"]
words = ["bal", "pik", "hap", "abcdefghij", "stok"]

# EACH VS MY_EACH
print("each vs my_each\n")
names.each {|i| puts i}
names.my_each {|i| puts i}
puts "\n"

# EACH_WITH_INDEX VS MY_EACH_WITH_INDEX
print("each_with_index vs my_each_with_index:\n")
fruits.each_with_index { |fruit, index| puts fruit if index.even? }
fruits.my_each_with_index { |fruit, index| puts fruit if index.even? }
puts "\n"

# SELECT VS MY_SELECT
print("select vs my_select: \n") 
p numbers.select { |n| n.even? }
p numbers.my_select { |n| n.even? }
puts "\n"

# ALL? VS MY_ALL?
print("all? vs my_all?: \n")
puts numbers.all? { |num| num>0 }
puts numbers.my_all? { |num| num>0 }
puts "\n"

# ANY? VS MY_ANY?
print("any? vs my_any?: \n")
puts words.any? { |word| word.length>1 }
puts words.my_any? { |word| word.length>1 }
puts "\n"

# NONE? VS MY_NONE?
print("none? vs my_none?: \n")
puts words.none? { |word| word.length>10 }
puts words.my_none? { |word| word.length>10 }
puts "\n"

# COUNT VS MY_COUNT
print("none? vs my_none?: \n")
puts words.count { |word| word.length>1 }
puts words.my_count { |word| word.length>1 }
puts "\n"

# MAP VS MY_MAP
print("map vs my_map: \n")
p numbers.map { |num| num * 3 }
p numbers.my_map { |num| num * 3 }
puts "\n"


# INJECT VS MY_INJECT
print("inject vs my_inject: \n")
p numbers.inject {|sum, number| sum + number}
p numbers.my_inject {|sum, number| sum + number}
puts "\n"