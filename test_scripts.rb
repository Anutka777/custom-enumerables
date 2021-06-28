# frozen_string_literal: true

require_relative 'custom_enums'

example = [1, 2, 3, 4, 5]

puts 'my_each vs each'
puts 'my_each with args'
puts 'Good call:'
example.my_each { |item| puts item }
puts 'And now witohout block:'
example.my_each
puts 'Original #each:'
example.each { |item| puts item }
puts '--------------------'

puts 'my_each_with_index vs each_with_index'
example.my_each_with_index { |item, index| puts "#{item} has index #{index}" }
puts ''
example.each_with_index { |item, index| puts "#{item} has index #{index}" }
puts '--------------------'

puts 'my_select vs select'
p(example.my_select { |item| item < 3 })
puts ''
p example.my_select
p(example.select { |item| item < 3 })
puts '--------------------'

puts 'my_all? vs all?'
p(example.my_all? { |item| item < 3 })
p(example.my_all? { |item| item < 6 })
puts ''
p(example.all? { |item| item < 3 })
p(example.all? { |item| item < 6 })
puts '--------------------'

puts 'my_any? vs any?'
p(example.my_any? { |item| item < 3 })
p(example.my_any? { |item| item > 6 })
p(example.my_any? { |item| item == 1 })
puts ''
p(example.any? { |item| item < 3 })
p(example.any? { |item| item > 6 })
p(example.any? { |item| item == 1 })
puts '--------------------'

puts 'my_none? vs none?'
p(example.my_none? { |item| item < 3 })
p(example.my_none? { |item| item > 6 })
puts ''
p(example.none? { |item| item < 3 })
p(example.none? { |item| item > 6 })
puts '--------------------'

puts 'my_count? vs count'
p(example.my_count { |item| item < 4 })
p(example.my_count { |item| item > 6 })
p example.my_count
p example.my_count(2)
puts ''
p(example.count { |item| item < 4 })
p(example.count { |item| item > 6 })
p example.count
p example.count(2)
puts '--------------------'

puts 'my_map vs map'
p example.my_map
puts ''
p(example.my_map { |item| item * 3 })
puts ''
p(example.map { |item| item * 3 })
puts '--------------------'

puts 'my_inject vs inject'
p(example.my_inject { |sum, item| sum + item })
puts ''
p(example.inject { |sum, item| sum + item })
puts '--------------------'
