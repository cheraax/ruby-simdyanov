#!/usr/bin/env ruby
# frozen_string_literal: true

arr = %w[first second third]
has = arr.map.with_index { |e, i| [e.to_sym, "#{(e[0] + e.split('').last(2).join).capitalize} (#{i + 1})"] }.to_h
p has
