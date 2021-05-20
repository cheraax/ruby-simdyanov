#!/usr/bin/env ruby
require_relative 'app2'
f_names = %w[Ivan Sergei Petr Pavel Iliya Evgeniy]
l_names = %w[Ivanov Petrov Sidorov Markov Sedov Kozlov]


class Group
  def initialize(users = [])
    @users = users
  end
  def add user
    @users << user
  end
  def each
    @users.each {|user| yield user}
  end
end

group = Group.new(Array.new(10) { User.new(f_names.sample, l_names.sample) })

group.each {|u| puts u}

