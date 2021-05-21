#!/usr/bin/env ruby
# frozen_string_literal: true

text = 'В Ruby всё – объект.
Для каждой частицы информации или кода могут быть определены собственные
свойства и действия. В объектно-ориентированном программировании свойства
называются переменными объекта, а действия – методами.
Чистейший объектно-ориентированный подход Ruby может быть продемонстрирован
парой строк кода, в которых производится действие над числом'
symbols = %w[,.!?:-'"]
arr = (text.downcase.split(' ') - symbols).select { |e| e.size > 5 }.sort
p "count: #{arr.count}"
puts arr