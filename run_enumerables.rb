require_relative 'custom_enumerables'
require 'pry-byebug'


p numbers = [1,2,3,4,5]
binding.pry
#numbers.my_each { |item| puts item + 5}
#numbers.each { |item| puts item}
#numbers.my_each_with_index { |item, index| puts " #{item} and #{index}"}
#numbers.each_with_index {|item, index| puts "#{item} and #{index}" } 
#puts result_mine = numbers.my_select { |num| num % 3 == 0}
#puts result = numbers.select { |num| num % 2 == 0 }
#numbers.my_all?(1)
#numbers.all?(1)
p numbers.my_any?(1)
p numbers.any?(1)