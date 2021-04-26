#!/usr/bin/env ruby
# frozen_string_literal: true

rainbow_ru = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
rainbow_en = %i[red orange yellow green blue indigo violet]
colors = Hash[rainbow_en.zip(rainbow_ru)]
