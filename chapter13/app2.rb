#!/usr/bin/env ruby
# frozen_string_literal: true

class ChessFigure
  attr_accessor :name, :color, :position, :state
end

pawn = ChessFigure.new
pawn.name = :pawn
pawn.color = :white
pawn.position = :e2
pawn.state = :alive

p pawn
