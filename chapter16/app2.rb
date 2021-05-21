#!/usr/bin/env ruby
# frozen_string_literal: true

class User
  attr_accessor :first_name, :last_name, :email

  def initialize
    yield self if block_given?
  end
end

user = User.new { |u| u.email = 'i.petrov@mail.me'; u.first_name = 'ivan'; u.last_name = 'petrov' }
pp user
