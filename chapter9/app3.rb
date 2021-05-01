#!/usr/bin/env ruby
# frozen_string_literal: true

def rainbow(color)
  colors = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
  colors.index(color) + 1
end

print 'Введите один из цветов радуги: '
color = gets.strip.downcase
puts "#{color} - №#{rainbow color} в радуге"
