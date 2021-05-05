#!/usr/bin/env ruby
# frozen_string_literal: true

def fibonacci(value, &block)
  fib = if value.zero? || value == 1
          value
        else
          fibonacci(value - 2) + fibonacci(value - 1, &block)
        end
  block.call fib if block_given?
  fib
end

fibonacci(10) { |i| print "#{i} " }
