# frozen_string_literal: true

# Custom enumerables
module Enumerable
  def my_each_with_index
    return to_enum unless block_given?

    i = 0
    for element in self
      yield(element, i)
      i += 1
    end
  end

  def my_select
    return to_enum unless block_given?

    selection = []
    for element in self
      selection << element if yield(element)
    end
    selection
  end

  def my_all?
    return to_enum unless block_given?

    for element in self
      return false if yield(element) == false
    end
    true
  end

  def my_any?
    return to_enum unless block_given?

    for element in self
      return true if yield(element) == true
    end
    false
  end

  def my_none?
    return to_enum unless block_given?

    for element in self
      return false if yield(element) == true
    end
    true
  end

  def my_count
    return size unless block_given?

    count = 0
    for element in self
      count += 1 if yield(element) == true
    end
    count
  end

  def my_map
    return to_enum unless block_given?

    map = []
    for element in self
      map << yield(element)
    end
    map
  end

  def my_inject(initial_value)
    return to_enum unless block_given?

    value = initial_value
    for element in self
      value = yield(element, value)
    end
    value
  end
end

# Custom each method for arrays
class Array
  def my_each
    return to_enum unless block_given?

    for element in self
      yield element
    end
  end
end
