#!/usr/bin/env ruby
# возьмем код из 5 задачи и используем его
def whois? value
 @numbers = ['-',*'0'..'9']
  @dots = ['.',',']

  result = value
  is_int = value.delete(@numbers.join).size == 0
  is_float = value.delete(@numbers.join + @dots.join).size == 0

  if is_int
    result = value.to_i
  elsif is_float
    result = value.to_f
  end

  result
end

params = whois? ARGV[0]

if params.class == String
  puts 'Not an Integer!'
else
  puts "#{params} is #{params % 2 == 0 ? 'odd' : 'even'}"
end
