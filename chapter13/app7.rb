#!/usr/bin/env ruby

class Substance
  @@states = %i[solid liquid gaz]

  def initialize
    @state = @@states.sample
  end

  def status
     "Substance is #{@state}"
  end

  def melt # из твердого в жидкое
    if @state == :solid
      @state = :liquid
    else
      error __method__
    end
  end

  def freez # из жидкого в твердое
    if @state == :liquid
      @state = :solid
    else
      error __method__
    end
  end

  def boil # из жидкого в газообразное
    if @state == :liquid
      @state = :gaz
    else
      error __method__
    end
  end

  def condense # из газообразного в жидкость
    if @state == :gaz
      @state = :liquid
    else
      error __method__
    end
  end

  def sublime # из твердого в газообразное
    if @state == :solid
      @state = :gaz
    else
      error __method__
    end
  end

  def deposit # из газообразного в твердое
    if @state == :gaz
      @state = :solid
    else
      error __method__
    end
  end

  def error meth
    "Substance is #{@state} and cant't be #{meth}"
  end

  def method_missing(meth, *args, &block)
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

p s.slice #undefined method
