#!/usr/bin/env ruby
# frozen_string_literal: true

def fibo(value)
  return 0 if value.zero?
  return 1 if value == 1

  fibo(value - 2) + fibo(value - 1)
end

puts fibo 6
puts fibo 1
puts fibo 0
