#!/usr/bin/env ruby
# frozen_string_literal: true

class User
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

users = []
puts 'Необходимо ввести данные трех пользователей!'
(1..3).each do |i|
  print "Введите имя пользователя №#{i}: "
  first_name = gets.strip.capitalize
  print "Введите фамилию пользователя №#{i}: "
  last_name = gets.strip.capitalize
  users << User.new(first_name, last_name)
end

pp users
