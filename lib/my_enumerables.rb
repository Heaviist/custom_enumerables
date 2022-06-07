# frozen_string_literal: true

# Custom enumerables
module Enumerable
  # Your code goes here
end

# Custom each method for arrays
class Array
  def my_each
    for element in self
      yield element
    end
  end
end
