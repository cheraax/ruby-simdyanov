#!/usr/bin/env ruby
# frozen_string_literal: true

class Building
  attr_accessor :floors, :color, :material, :has_parking, :year, :address

  def to_s
    "Building: #{@address}
    floors: #{@floors}
    color: #{@color}
    material: #{@material}
    parking: #{@has_parking}
    buid in: #{@year}"
  end
end

bld = Building.new
bld.floors = 5
bld.color = 'grey'
bld.material = 'ferroconcrete'
bld.has_parking = false
bld.year = 1965
bld.address = 'Moscow, Mira st. #1'

puts bld
