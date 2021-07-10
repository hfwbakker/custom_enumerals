require_relative "enumerables.rb"

module Enumerable
  def my_map
    result = []
    my_each { |i| result.append yield i }
    return result
  end
end

words = ["bal", "pik", "hap", "abcdefghij", "stok"]
numbers = [1, 2, 3, 4, 5, 6]


p numbers.map { |num| num * 3 }
p numbers.my_map { |num| num * 3 }


# if
#   next
# else
#   return false
# return true
