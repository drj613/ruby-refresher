module Enumerable
  def my_each
    for i in 0...self.length do
      yield self[i]
    end
    return self
  end

  def my_each_with_index
    for i in 0...self.length do
      yield(self[i], i)
    end
    return self
  end

  def my_select
    matching_arr = []
    for i in 0...self.length do
      if yield self[i]
        matching_arr << self[i]
      end
    end
    return matching_arr
  end

  def my_all?
    all_match = true
    for i in 0...self.length do
      if !yield self[i]
        all_match = false
      end
    end
    return all_match
  end

  def my_any?
    any_match = false
    for i in 0...self.length do
      if yield self[i]
        any_match = true
      end
    end
    return any_match
  end

  def my_none?
    no_match = false
    for i in 0...self.length do
      if yield self[i]
        no_match = true
      end
    end
    return !no_match
  end

  def my_count
    count = 0
    for i in 0...self.length do
      if yield self[i]
        count+=1
      end
    end
    return count
  end

  def my_map
    new_arr = []
    for i in 0...self.length do
      new_arr << (yield self[i])
    end
    return new_arr
  end

  def my_inject
    accumulator = self[0]
    for i in 1...self.length do
      accumulator = (yield(accumulator, self[i]))
    end
    return accumulator
  end

  def multiply_els
    return self.my_inject{|total, x| total*=x}
  end

end
