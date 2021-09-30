require_relative 'custom_enumerables'
require 'pry-byebug'

puts "my_each vs. each"
numbers = [1, 2, 3, 4, 5]
#numbers.my_each { |item| puts item + 5}
#numbers.each { |item| puts item}
numbers.my_each_with_index { |item, index| puts " #{item} and #{index}"}
numbers.each_with_index {|item, index| puts "#{item} and #{index}" } 