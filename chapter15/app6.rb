#!/usr/bin/env ruby
# frozen_string_literal: true

eng = %w[red orange yellow green gray blue violet]

rus = %w[красный оранжевый желтый зеленый серый синий фиолетовый]

dic_1 = eng.zip(rus).map { |arr| [arr.first.to_sym, arr.last] }.to_h
dic_2 = Hash[[eng.map(&:to_sym), rus].transpose]

pp dic_1
pp dic_2
