#!/usr/bin/env ruby
# frozen_string_literal: true

animals = %w[cat dog tiger]
puts animals.select { |e| e.include? 't' }
