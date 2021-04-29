#!/usr/bin/env ruby
# frozen_string_literal: true

# число в степени n это само число, умноженное на себя n раз
# значит нужно число умножить на себя n - 1 раз, пока
# степень не станет равна нулю и получим
# 2 ^ 3 = 2 х (2 х (2 х (2^0)))
def my_pow(value, pow)
  return 1 if pow.zero?

  value *= my_pow(value, pow - 1)
end

puts "my_pow 5, 3: #{my_pow 5, 3}"

puts "5**3: #{5**3}"
