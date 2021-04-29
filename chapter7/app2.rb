#!/usr/bin/env ruby

# бинарные операции 1 & 0 дают 0
# значит надо крайний бит сравнить с 1
# если там 1 то вернет 1 если 0 то 0

arr = [*1..9]
arr.each do |element|
  puts "#{element} is #{element & 1 == 0 ? 'even' : 'odd'}"
end
