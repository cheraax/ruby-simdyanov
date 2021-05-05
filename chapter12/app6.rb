#!/usr/bin/env ruby
# frozen_string_literal: true

require 'date'
def week(number, &block)
  date = Date.commercial(Time.now.year, number, 1)
  loop do
    block.call date
    break if date.sunday?

    date = date.next_day
  end
end

w_names = %w[вс пн вт ср чт пт сб]

n_week = Time.now.to_date.cweek

week(n_week) { |d| p d.strftime("#{w_names[d.wday]}: %d.%m.%Y") }
