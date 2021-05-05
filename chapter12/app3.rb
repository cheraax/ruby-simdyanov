#!/usr/bin/env ruby
# frozen_string_literal: true

def my_reduce(arr)
  @acc = 0
  return nil unless block_given?

  arr.each { |el| @acc = yield(@acc, el) }
  @acc
end

arr = [*1..9]
p(arr.reduce { |acc, el| acc + el })
p(my_reduce(arr) { |acc, el| acc + el })
