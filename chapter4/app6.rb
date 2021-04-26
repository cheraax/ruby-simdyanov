#!/usr/bin/env ruby
# frozen_string_literal: true

point_a = { x: 3, y: 7 }
point_b = { x: -1, y: 5 }

distance = Math.sqrt((point_b[:x] - point_a[:x])**2 + (point_b[:y] - point_a[:y])**2)

puts "Расстояние между точками: #{distance}"
