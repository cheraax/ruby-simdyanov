#!/usr/bin/env ruby
# frozen_string_literal: true

number = ARGV[0].to_i

def factorial(n)
  return 1 if n.zero?

  n * factorial(n - 1)
end

puts "factorial #{number}! = #{factorial(number)}"
