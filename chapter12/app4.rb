#!/usr/bin/env ruby
# frozen_string_literal: true

def walk(arr, &block)
  arr.each do |el|
    case el.class
    when Array
      el.each { |sub| walk(sub, &block) }
    else
      block.call(el)
    end
  end
  @count
end

arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]
walk(arr) { |i| puts i }
