# frozen_string_literal: true

# I'll add to the existing module Enumerable
module Enumerable
  def no_block_given
    puts 'WARNINNG! No block was given. Generic enumerator was returned.'
    self.to_enum
  end

  def my_each
    return no_block_given unless block_given?

    # No .each allowed!
    for item in self
      yield item
    end
  end

  def my_each_with_index
    return no_block_given unless block_given?

    index = 0
    # No .each allowed!
    for item in self
      yield item, index
      index += 1
    end
  end

  def my_select
    return no_block_given unless block_given?

    data = []
    my_each { |item| data.push item if yield item }
    data
  end

  def my_all?
    return no_block_given unless block_given?

    my_each do |item|
      return false unless yield item
    end
    true
  end

  def my_any?
    return no_block_given unless block_given?

    my_each do |item|
      return true if yield item
    end
    false
  end

  def my_none?
    return no_block_given unless block_given?

    my_each do |item|
      return false if yield item
    end
    true
  end
end
