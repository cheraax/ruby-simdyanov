#!/usr/bin/env ruby
# frozen_string_literal: true

users = %w(Иванов Петров Сидоров Комаров Сорокин Орлов Карасев Быков Козлов Соловьев)

for i in 0..users.size - 1
  for j in 0..users.size - 1
    users[i], users[j] = users[j], users[i] if users[i] < users[j]
  end
end

puts users.inspect
puts users.sort.inspect
