# frozen_string_literal: true

require_relative './classes/player.rb'
require_relative './classes/dice.rb'

puts "🎲 Welcome to DiceGame 🎲\n\n"

puts 'Insert player name:'
@player = Player.new(gets.chomp)
@opponent = Player.new('PC')

puts "\nWelcome #{@player.name}!"
puts 'Please select (r) to roll, (q) for quit'

loop do
  print '> '
  input = gets.chomp

  case input
  when 'r'
    @player.roll
    @opponent.roll

    puts "\nYou: #{@player.score}"
    puts "Opponent: #{@opponent.score}\n"

    if @player.score > @opponent.score
      puts '🎉 You won! 🎉'
    elsif @opponent.score > @player.score
      puts '😢 You loose! 😢'
    else
      puts '🤷‍♂️ Tie! 🤷‍♂️'
    end
  when 'q'
    puts 'Goodbye!'
    break
  else
    puts 'Ops, use the right commands...'
  end
end
