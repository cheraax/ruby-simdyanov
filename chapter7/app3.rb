#!/usr/bin/env ruby
# frozen_string_literal: true

# параллельное присваивание
fst = 10
snd = 20

fst, snd = snd, fst

puts "#{fst} #{snd}"
