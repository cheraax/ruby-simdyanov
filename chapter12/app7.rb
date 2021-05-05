#!/usr/bin/env ruby
# frozen_string_literal: true

require 'date'
def weekends(year, &block)
  date = Date.new(year, 1, 1)
  loop do
    block.call date if date.sunday? || date.saturday?
    date = date.next_day
    break if date.year > year
  end
end

n_year = Time.now.year

w_names = %w[вс пн вт ср чт пт сб]

weekends(n_year) { |d| p d.strftime("#{w_names[d.wday]}: %d.%m.%Y") }
