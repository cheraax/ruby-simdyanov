#!/usr/bin/env ruby

# параллельное присваивание
fst = 10
snd = 20

fst, snd = snd, fst

puts "#{fst} #{snd}"
