#!/usr/bin/env ruby
# frozen_string_literal: true

def my_select(arr)
  @new_arr = []
  if block_given?
    arr.each { |el| @new_arr << el if yield el }
  end
  @new_arr
end

arr = [*1..10]

p my_select(arr, &:odd?)
