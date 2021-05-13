#!/usr/bin/env ruby
# frozen_string_literal: true

class Time
  def self.hello
    case now.hour
    when 0..4
      'Good night'
    when 5..11
      'Good morning'
    when 12..17
      'Good day'
    when 18..23
      'Good evening'
    end
  end
end

p Time.hello
