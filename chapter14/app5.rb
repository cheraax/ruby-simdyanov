#!/usr/bin/env ruby
class List
  attr_accessor :args
  def initialize(*args)
    @args = args
  end
  def each
    @args.each {|arg| yield arg if block_given?}
  end
end

list = List.new 1,2,3
list.each {|arg| puts arg}
