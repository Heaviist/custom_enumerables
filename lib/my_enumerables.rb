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
