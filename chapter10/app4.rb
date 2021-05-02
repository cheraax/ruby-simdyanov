#!/usr/bin/env ruby
# frozen_string_literal: true

current_date = Time.now

year = current_date.year
sec_in_day = 24 * 60 * 60
wday = current_date.wday

start_day = current_date - (wday - 1) * sec_in_day
end_day = current_date + (7 - wday) * sec_in_day
puts "#{start_day.strftime('%d-%m-%Y')} - #{end_day.strftime('%d-%m-%Y')}"
