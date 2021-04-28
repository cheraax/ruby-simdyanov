#!/usr/bin/env ruby
# frozen_string_literal: true

class Point
  def set_x value
    @x = value
  end

  def x
    @x
  end

  def set_y value
    @y = value
  end

  def y
    @y
  end

  def distance (other_point)
    Math.sqrt( (other_point.x - @x)**2 + (other_point.y - @y)**2)
  end
end

a = Point.new
a.set_x 3
a.set_y 6
b = Point.new
b.set_x -1
b.set_y 5

puts "distance between A and B: #{a.distance b}"
