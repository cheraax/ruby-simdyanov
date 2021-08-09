#!/usr/bin/env ruby
class Person
  private_class_method :new
  def initialize(name, second_name, last_name, email)
    @name = name
    @second_name = second_name
    @last_name = last_name
    @email = email
  end
  def to_s
    "#{@last_name} #{@first_name} #{second_name} : #{@email}"
  end
end

class User < Person
  public_class_method :new
end
class Admin < Person
  public_class_method :new
end
class Moderator < Person
  public_class_method :new
end

prsn = Person.new('ivan', 'ivanovich', 'ivanov', 'ivanov_i_i@email.com')
usr = User.new('ivan','ivanovich','ivanov','ivanov_i_i@email.com')
