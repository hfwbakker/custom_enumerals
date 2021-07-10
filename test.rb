require_relative "enumerables.rb"

module Enumerable
  def my_inject
    result = self[0]

    self.my_each_with_index do |ele, index| 
      next if index == 0  
      result = yield(ele, result)
    end

    result
  end
end

words = ["bal", "pik", "hap", "abcdefghij", "stok"]
numbers = [1, 2, 3, 4, 5, 6]


p numbers.inject {|sum, number| sum + number}
p numbers.my_inject {|sum, number| sum + number}



# if
#   next
# else
#   return false
# return true
