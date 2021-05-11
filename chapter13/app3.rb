#!/usr/bin/env ruby
class Week
  def each(&block)
    days = %w[пн вт ср чт пт сб вс]
    days.each {|d| block.call d}
  end
end

week = Week.new
week.each {|d| print "#{d} "}
