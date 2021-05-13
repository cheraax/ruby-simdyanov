#!/usr/bin/env ruby
# frozen_string_literal: true

require 'state_machine'

class Substance
  state_machine :state, initial: %i[gaz solid liquid].sample do
    before_transition do |substance|
      print "Substance was '#{substance.state}'"
    end

    after_transition do |substance, transition|
      puts " now is '#{substance.state}' after #{transition.event.upcase}"
    end

    event :melt do
      transition solid: :liquid
    end

    event :freez do
      transition liquid: :solid
    end

    event :boil do
      transition liquid: :gaz
    end

    event :condense do
      transition gaz: :liquid
    end

    event :sublime do
      transition solid: :gaz
    end

    event :deposit do
      transition gaz: :solid
    end

    state :solid do
    end

    state :liquid do
    end

    state :gaz do
    end
  end
end

s = Substance.new
p s.state
s.boil
s.deposit
s.sublime
s.condense
p s.state
