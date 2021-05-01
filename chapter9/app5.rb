#!/usr/bin/env ruby
# frozen_string_literal: true

def cel2far(value)
  value * 1.8 + 32
end

def far2cel(value)
  (value - 32) / 1.8
end

puts format('%.2f', cel2far(30))
puts format('%.2f', far2cel(100))
