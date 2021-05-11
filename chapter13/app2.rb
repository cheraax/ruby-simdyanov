#!/usr/bin/env ruby
class ChessFigure
  attr_accessor :name, :color, :position, :state
end

pawn = ChessFigure.new
pawn.name = :pawn
pawn.color = :white
pawn.position = :e2
pawn.state = :alive

p pawn
