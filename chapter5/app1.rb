#!/usr/bin/env ruby
# frozen_string_literal: true

class User

  attr_reader :first_name, :last_name

  def set_first_name(new_name)
    @first_name = new_name
  end



  def set_last_name(new_name)
    @last_name = new_name
  end
end

user = User.new
user.set_first_name('andrey')
user.set_last_name('chernov')

puts "#{user.first_name} #{user.last_name}"
