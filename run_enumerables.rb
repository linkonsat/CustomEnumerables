require_relative 'custom_enumerables'
require 'pry-byebug'


p numbers = [5,5,2,3]
#numbers.my_each { |item| puts item + 5}
#numbers.each { |item| puts item}
#numbers.my_each_with_index { |item, index| puts " #{item} and #{index}"}
#numbers.each_with_index {|item, index| puts "#{item} and #{index}" } 
#puts result_mine = numbers.my_select { |num| num % 3 == 0}
#puts result = numbers.select { |num| num % 2 == 0 }
#numbers.my_all?(1)
#numbers.all?(1)
#numbers.my_any?(2)
#numbers.any?(2)
#p numbers.my_none?(50)
#p numbers.none?(50)
#p numbers.my_count(5)
#p numbers.count(5)
p numbers.my_map { |item| item * 2}
p numbers.map { |item| item * 2}
p numbers.my_inject { |accumulator, value| accumulator * value}
p numbers.inject { |accumulator, value| accumulator * value}
p multiply_els([2,4,5])

p weird = numbers.insert(2, numbers.my_inject())
binding.pry
p "bl"