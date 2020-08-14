# frozen_string_literal: true

require_relative 'dice.rb'

class Player
  attr_accessor :name
  attr_reader :score

  def initialize(name)
    @name = name
    roll
  end

  def roll
    @score = Dice.new.value
  end
end
