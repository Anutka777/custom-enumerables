# frozen_string_literal: true

require_relative 'custom_enums'

puts 'my_each vs each'
example = [1, 2, 3, 4, 5]
example.my_each { |item| puts item }
example.my_each
puts ''
example.each { |item| puts item }
puts '--------------------'

puts 'my_each_with_index vs each_with_index'
example = [1, 2, 3, 4, 5]
example.my_each_with_index { |item, index| puts "#{item} has index #{index}" }
puts ''
example.each_with_index { |item, index| puts "#{item} has index #{index}" }
puts '--------------------'
