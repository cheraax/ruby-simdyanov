#!/usr/bin/env ruby
# frozen_string_literal: true

colors = []
loop do
  print 'Enter color name or \'stop\' : '
  color = gets.strip
  break if color.downcase == 'stop'

  colors << color
end

p colors.reject(&:empty?).uniq.sort
