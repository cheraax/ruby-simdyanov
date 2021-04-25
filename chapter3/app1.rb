#!/usr/bin/env ruby
# frozen_string_literal: true

##
#Kласс пользователя
#с методами: +fio+ и +profession+
#=Пример:
#  user = User.new
#  user.fio => 'John Dow'
#  user.profession => 'programmer'
class User
  ##
  # метод +fio+ выводит ФИО пользователя
  def fio
    puts 'John Dow'
  end

  ##
  # метод +profession+ выводит
  # профессию пользователя
  def profession
    puts 'programmer'
  end
end
