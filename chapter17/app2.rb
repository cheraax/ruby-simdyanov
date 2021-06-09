#!/usr/bin/env ruby
class User
  attr_accessor :name, :email
  def initialize(name:, email:)
    @name = name
    @email = email
  end
  def to_s
    "name: #{@name} email: #{@email}"
  end
  alias say to_s
end

class Admin < User
  def initialize(name:, email:)
    super
    @role = :admin
  end
  def to_s
    "#{super} role: #{@role}"
  end
  alias say to_s
end

class Author < User
  def initialize(name:, email:)
    super
    @role = :author
  end
  def to_s
    "#{super} role: #{@role}"
  end
  alias say to_s
end

class Moderator < User
  def initialize(name:, email:)
    super
    @role = :moderator
  end
  def to_s
    "#{super} role: #{@role}"
  end
  alias say to_s
end

class Visitor < User
  def initialize(name:, email:)
    super
    @role = :visitor
  end
  def to_s
    "#{super} role: #{@role}"
  end
  alias say to_s
end

visitor = Visitor.new name: 'ivan', email: 'ivan@mail.com'
puts visitor.say
