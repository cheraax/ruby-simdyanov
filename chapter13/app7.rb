#!/usr/bin/env ruby
# frozen_string_literal: true

class Substance
  @@states = %i[solid liquid gaz]

  def initialize
    @state = @@states.sample
  end

  def status
    "Substance is #{@state}"
  end

  # из твердого в жидкое
  def melt
    if @state == :solid
      @state = :liquid
    else
      error __method__
    end
  end

  # из жидкого в твердое
  def freez
    if @state == :liquid
      @state = :solid
    else
      error __method__
    end
  end

  # из жидкого в газообразное
  def boil
    if @state == :liquid
      @state = :gaz
    else
      error __method__
    end
  end

  # из газообразного в жидкость
  def condense
    if @state == :gaz
      @state = :liquid
    else
      error __method__
    end
  end

  # из твердого в газообразное
  def sublime
    if @state == :solid
      @state = :gaz
    else
      error __method__
    end
  end

  # из газообразного в твердое
  def deposit
    if @state == :gaz
      @state = :solid
    else
      error __method__
    end
  end

  def error(meth)
    "Substance is #{@state} and cant't be #{meth}"
  end

  def method_missing(meth, *_args)
    error meth
  end
end

s = Substance.new
p s.status
p s.melt
p s.freez
p s.boil
p s.sublime
p s.condense
p s.deposit

p s.status

p s.slice # undefined method
