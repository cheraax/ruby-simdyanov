#!/usr/bin/env ruby
# frozen_string_literal: true

# можно добавить цвет, кол-во колес, тип привода, кожа-рожа
# тип топлива, марка топлива, все будет зависеть от конкретной задачи

class Car
  def type
    @type
  end

  def set_type type
    @type = type
  end

  def accelerate value
    @speed += value
  end

  def stop
    @speed = 0
  end
end

car1 = Car.new
car1.set_type :truck
car1.accelerate 10

car2 = Car.new
car2.set_type :musclecar
car2.accelerate 200
