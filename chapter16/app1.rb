#!/usr/bin/env ruby
# frozen_string_literal: true

class Integer
  BYTES = 1024
  def kilobytes
    self * BYTES
  end

  def megobytes
    self * BYTES.kilobytes
  end

  def gigabytes
    self * BYTES.megobytes
  end

  def terabytes
    self * BYTES.gigabytes
  end
end

p 1.megobytes
p 1.kilobytes
p 1.gigabytes
p 1.terabytes
