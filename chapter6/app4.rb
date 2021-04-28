#!/usr/bin/env ruby
# frozen_string_literal: true

numbers = ARGV.map(&:to_i)

puts "#{numbers.join(' + ')} = #{numbers.sum}"
