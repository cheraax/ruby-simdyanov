# frozen_string_literal: true

class Hello
  def say_hi
    case Time.now.hour
    when 0..4
      'Good night'
    when 5..11
      'Good morning'
    when 12..17
      'Good day'
    when 18..23
      'Good evening'
    end
  end
end
