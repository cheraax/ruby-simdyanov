#!/usr/bin/env ruby
# frozen_string_literal: true

class User
  attr_reader :score

  def initialize(first_name, last_name)
    @score = rand(1..5)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    "\t#{@first_name} #{@last_name}: #{@score}"
  end
end

f_names = %w[Milke John Kenny Sam Din Polly]
l_names = %w[Smith Snow Kennedy Claus Crown]

users = Array.new(10) { User.new f_names.sample, l_names.sample }

avr_score = users.reduce(0.0) { |s, u| s + u.score } / users.size

puts "Average score: #{avr_score}"
puts users.select { |e| e.score > avr_score }
