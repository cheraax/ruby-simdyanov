#!/usr/bin/env ruby

class Integer
  def minutes
    self * 60
  end
  def hours
    self * 60.minutes
  end
  def days
    self * 24.hours
  end
end

p 5.minutes
p 1.days
p 2.hours
