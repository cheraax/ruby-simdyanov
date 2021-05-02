#!/usr/bin/env ruby
# frozen_string_literal: true

print 'Введите делимое: '
fst = gets.to_f
while true
  print 'Введите делитель: '
  snd = gets.to_f
  break if snd != 0
end
puts "Частное: #{fst / snd}"
