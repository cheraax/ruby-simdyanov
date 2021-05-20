#!/usr/bin/env ruby
class User
  attr_accessor :first_name,  :last_name
  def initialize(first,last)
    @first_name = first
    @last_name = last
  end
  def to_s
    "#{@first_name} #{@last_name}"
  end
end

# u = User.new('ivan', 'ivanov')
# p u
