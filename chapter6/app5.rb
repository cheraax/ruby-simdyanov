#!/usr/bin/env ruby
# frozen_string_literal: true

date = ARGV[0..2].map(&:to_i)

b_day = Time.new(*date)
cur_day = Time.now

puts "#{cur_day.year - b_day.year} years #{cur_day.month - b_day.month} month #{cur_day.day - b_day.day} days"
