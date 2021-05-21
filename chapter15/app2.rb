#!/usr/bin/env ruby
# frozen_string_literal: true

arr = %i[first second third]
has = arr.map.with_index { |e, i| [e, i + 1] }.to_h
p has
