# frozen_string_literal: true

# I'll add to the existing module Enumerable
module Enumerable
  def my_each
    return puts 'ERROR: no block was given' unless block_given?

    # No .each allowed!
    for item in self
      yield item
    end
  end

  def my_each_with_index
    return puts 'ERROR: no block was given' unless block_given?

    index = 0
    # No .each allowed!
    for item in self
      yield item, index
      index += 1
    end
  end

  def my_select
    return puts 'ERROR: no block was given' unless block_given?

    data = []
    my_each { |item| data.push item if yield item }
    data
  end

  def my_all?
    return puts 'ERROR: no block was given' unless block_given?

    my_each do |item|
      return false unless yield item
    end
    true
  end

  def my_any?
    return puts 'ERROR: no block was given' unless block_given?

    my_each do |item|
      return true if yield item
    end
    false
  end

  def my_none?
    return puts 'ERROR: no block was given' unless block_given?

    my_each do |item|
      return false if yield item
    end
    true
  end
end
