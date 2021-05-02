#!/usr/bin/env ruby
# текущая дата
now = Time.now
# начало недели как в США или как у нас
week_start_from = 1 # 0 - sunday 1 - monday
# имена дней и месяцев
d_names = %w[вс пн вт ср чт пт сб вс]
m_names = %w[Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь]
# заголовок календаря
title = "#{m_names[now.month - 1]} #{now.year}"
# определим начало и конец месяца
d_start = Time.new(now.year, now.month, 1)
d_end = Time.new(now.year, now.month + 1, 1) - 1
# объявим календарь и новую неделю, пробелы в днях для правильного отображения
calendar = []
week = Array.new(7) {' '}
# пойдем циклом по дням и положим каждый день
# в массив своей недели, в зависимости от позиции дня в неделе
for i in d_start.mday..d_end.mday
  w_day = Time.new(now.year, now.month, i)
  week[w_day.wday] = i
  if w_day.saturday? || i == d_end.mday
    calendar << week
    week = Array.new(7){' '} if w_day.saturday?
  end
end
# пройдем по календарю и нарежем согласно настройке
# с какого дня стартует неделя 'week_start_from'
for i in 0..calendar.size - 1
  new_cal ||= []
  start ||= week_start_from
  new_cal << calendar.flatten.slice(start..start + 6)
  start += 7
end
calendar = new_cal
# подготовим заголовок для недели
days = d_names[week_start_from..week_start_from + 6]

# вывод календаря
puts "\t\t\t\t#{title}"
days.each {|d| print "%2s\t" % d}
puts
calendar.each {|w| print "#{w.join(" \t")}\n" }
