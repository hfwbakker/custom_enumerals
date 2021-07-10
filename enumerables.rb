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

  def my_select
    selected_values = []
    self.my_each { |i| selected_values << i if yield i }
    return selected_values
  end

  def my_all?
    result = true
    my_each { |i| result = false unless yield i }
    return result
  end

  def my_any?
    result = false
    my_each { |i| result = true if yield i }
    return result
  end

  def my_none?
    result = true
    my_each { |i| result = false if yield i }
    return result
  end

  def my_count
    result = 0
    my_each { |i| result += 1 if yield i }
    return result
  end

  def my_map
    result = []
    my_each { |i| result.append yield i }
    return result
  end

end
