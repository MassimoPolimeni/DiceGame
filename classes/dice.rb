# frozen_string_literal: true

class Dice
  attr_reader :value

  def initialize
    values = [1, 2, 3, 4, 5, 6]
    @value = values.sample
  end
end
