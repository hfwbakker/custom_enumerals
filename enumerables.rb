module Enumerable
  def my_each
    return "No block given" unless block_given?
    for i in self
      yield i
    end
  end

  def my_each_with_index
    return "No block given" unless block_given?
    for i in self
      index = self.index(i)
      yield i, index
    end
  end
  # fruits.my_each_with_index { |fruit, index| puts fruit if index.even? }

  def my_select
    return "No block given" unless block_given?
    selected_values = []
    self.my_each { |i| selected_values << i if yield i }
    return selected_values
  end

  def my_all?
    return "No block given" unless block_given?
    result = true
    my_each { |i| result = false unless yield i }
    return result
  end

  def my_any?
    return "No block given" unless block_given?
    result = false
    my_each { |i| result = true if yield i }
    return result
  end

  def my_none?
    return "No block given" unless block_given?
    result = true
    my_each { |i| result = false if yield i }
    return result
  end

  def my_count
    return "No block given" unless block_given?
    result = 0
    my_each { |i| result += 1 if yield i }
    return result
  end

  def my_map
    return "No block given" unless block_given?
    result = []
    my_each { |i| result.append yield i }
    return result
  end

  def my_inject
    return "No block given" unless block_given?
    result = 0
    my_each { |i| result += i }
    return result
  end
end
