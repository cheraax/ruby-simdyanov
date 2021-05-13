#!/usr/bin/env ruby
# frozen_string_literal: true

class Factory
  @@count = 0
  @@teaddy_bears = []
  @@cubes = []
  @@balls = []

  def build(type = :teaddy_bear)
    @@count += 1
    case type
    when :teaddy_bear
      @@teaddy_bears << TeaddyBear.new
      @@teaddy_bears.last
    when :cube
      @@cubes << Cube.new
      @@cubes.last
    when :ball
      @@balls << Ball.new
      @@balls.last
    end
  end

  def total
    @@count
  end

  def offers
    { teaddy_bear: @@teaddy_bears.size, cube: @@cubes.size, ball: @@balls.size }
  end

  class TeaddyBear
  end

  class Cube
  end

  class Ball
  end
end

types = %i[teaddy_bear cube ball]
factory = Factory.new
toys = Array.new(20) { factory.build types.sample }

p factory.total
p factory.offers
