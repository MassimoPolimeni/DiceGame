# frozen_string_literal: true

require_relative './classes/player.rb'
require_relative './classes/dice.rb'

def roll
  puts "\nRolling...\n\n"
  @player1.roll
  @player2.roll
end

puts "🎲 Welcome to DiceGame 🎲\n\n"

puts 'Insert player 1:'
@player1 = Player.new(gets.chomp)
puts 'Insert player 2:'
@player2 = Player.new(gets.chomp)

roll

puts 'Please select (r) to roll again, (1 or 2) to guess, (q) for quit'

loop do
  print '> '
  input = gets.chomp

  case input
  when 'r'
    roll
  when '1'..'2'
    puts "#{@player1.name} score: #{@player1.score}"
    puts "#{@player2.name} score: #{@player2.score}"

    if @player1.score == @player2.score
      puts 'Draw 🤷‍♂️'
    elsif (input.to_i == 1 && (@player1.score > @player2.score)) || (input.to_i == 2 && (@player2.score > @player1.score))
      puts 'You won! 🏆'
    else
      puts 'You loose! 🥺'
    end

    roll
  when 'q'
    puts 'Goodbye!'
    break
  else
    puts 'Ops, use the right commands...'
  end
end
