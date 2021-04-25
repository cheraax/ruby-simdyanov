#!/usr/bin/env ruby
# frozen_string_literal: true

class User
  def fio
    'andrey chernov'
  end

  def profession
    'ruby developer'
  end
end

user = User.new
puts user.fio
puts user.profession
