#!/usr/bin/env ruby

# т.к. все принятое из консоли - строка, то ответ как бы напрашивается...
# но, мы пойдем другим путем, из строки удалим все цифры, проверим длину,
# если равна 0, то это было число
# удалим из строки все цифры и точку/запятую и посмотрим длину, если 0 то это
# было вещественное число, а иначе пусть будет "строка"
# ну и минус удалить надо
params = ARGV[0..2]
numbers = ['-',*'0'..'9']
dots = ['.',',']

params.each do |el|
  is_int = el.delete(numbers.join).size == 0

  is_float = el.delete(numbers.join + dots.join).size == 0

  if is_int
    puts " #{el} \t- Integer"
  elsif is_float
    puts " #{el} \t- Float"
  else
    puts " #{el} \t- String"
  end
end
