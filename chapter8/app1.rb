#!/usr/bin/env ruby

def color_of_rainbow position
  case position
  when 1
    "красный"
  when 2
    "оранжевый"
  when 3
    "желтый"
  when 4
    "зеленый"
  when 5
    "голубой"
  when 6
    "синий"
  when 7
    "фиолетовый"
  else
    nil
  end
end

choice = rand(0..9)
puts "Your choose: #{choice} - #{color_of_rainbow choice}"
