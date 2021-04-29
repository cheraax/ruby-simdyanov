#!/usr/bin/env ruby

def day_of_week number
  case number
  when 1
    'Monday'
  when 2
    'Tuesday'
  when 3
    'Wednesday'
  when 4
    'Thursday'
  when 5
    'Friday'
  when 6
    'Saturday'
  when 7
    'Sunday'
  else
    nil
  end
end

choice = rand(0..9)

puts "The #{choice} day is - #{day_of_week choice}"
