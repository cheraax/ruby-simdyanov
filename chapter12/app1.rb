#!/usr/bin/env ruby
# frozen_string_literal: true

def my_map(arr)
  @new_arr = []
  arr.each { |el| @new_arr << (block_given? ? (yield el) : el) }
  @new_arr
end

arr = [*1..6]

p my_map(arr) { |i| i * 2 }
