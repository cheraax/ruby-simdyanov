#!/usr/bin/env ruby
class Foo
  def initialize (arg = {})
    arg.each { |k,v| self.class.define_method k do v end }
  end
end

f = Foo.new a: 1, b: 2

p f.a
p f.b
