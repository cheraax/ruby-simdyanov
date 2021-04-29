#!/usr/bin/env ruby

# получим три "числа", сравним их после преобразования к инт и флоат
# значение, если целое, будет равным, эти элементы преобразуем к целому
# и выводим наибольше число
params = ARGV[0..2]
params_i = params.select{ |el| el.to_i == el.to_f }.map(&:to_i)

puts "Get: #{params.inspect} Integers: #{params_i.inspect}, max: #{params_i.max}"
