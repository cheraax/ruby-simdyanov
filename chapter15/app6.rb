#!/usr/bin/env ruby
# frozen_string_literal: true

eng = %w[red orange yellow green gray blue violet]

rus = %w[красный оранжевый желтый зеленый серый синий фиолетовый]

dic_1 = eng.map(&:to_sym).zip(rus).to_h
dic_2 = Hash[[eng.map(&:to_sym), rus].transpose]

pp dic_1
pp dic_2
