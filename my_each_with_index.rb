module Enumerable
  def my_each_with_index
    return "No block given" unless block_given?
    for i in self
      index = self.index(i)
      yield i, index
    end
  end
end
  
fruits = ["apple", "banana", "strawberry", "pineapple"]

print("My enumeral:\n")
fruits.my_each_with_index { |fruit, index| puts fruit if index.even? }

print("Ruby enumeral:\n")
fruits.each_with_index { |fruit, index| puts fruit if index.even? }

p fruits.index("apple")