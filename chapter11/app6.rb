#!/usr/bin/env ruby
# frozen_string_literal: true

days = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье]
p days.select { |d| d.start_with? 'С' }
