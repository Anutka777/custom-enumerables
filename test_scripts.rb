# frozen_string_literal: true

require_relative 'custom_enums'

example = [1, 2, 3, 4, 5]

puts 'my_each vs each'
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
