#!/usr/bin/env ruby
# frozen_string_literal: true

def leap_year?(year)
  (year % 4).zero? || (year % 100 != 0) && (year % 400).zero?
end

puts leap_year? 1980
puts leap_year? 2021
puts leap_year? 2020
