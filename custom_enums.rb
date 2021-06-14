# frozen_string_literal: true

# I'll add to the existing module Enumerable
module Enumerable
  def my_each
    return puts 'ERROR: no block was given' unless block_given?

    for item in self
      yield item
    end
  end

  def my_each_with_index
    return puts 'ERROR: no block was given' unless block_given?

    index = 0
    for item in self
      yield item, index
      index += 1
    end
  end
end
