#!/usr/bin/env ruby
# frozen_string_literal: true

arr = Array.new(10) { rand(0..99) }
min = 99
max = 0

for i in arr
  min = i if min > i
  max = i if max < i
end

puts "min #{min} max #{max}"
puts "min #{arr.min} max #{arr.max}"
