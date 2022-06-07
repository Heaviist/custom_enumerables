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
    return selection
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
