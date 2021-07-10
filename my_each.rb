module Enumerable
  def my_each
    return "No block given" unless block_given?
    for i in self
      yield i
    end
  end
end

# numbers = [1, 2, 3]

# numbers.my_each {|i| puts i}
# numbers.each {|i| puts i}
