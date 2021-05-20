#!/usr/bin/env ruby
class Hello
  def initialize(param)
    @word = param
  end

  def to_s
    "Hello, #{@word}"
  end
  alias :say :to_s
end

h = Hello.new "word"
puts h.say
puts h
