#!/usr/bin/env ruby
# frozen_string_literal: true

m_names = %w[Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь]
p m_names.minmax { |a, b| a.size <=> b.size }
