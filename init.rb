# frozen_string_literal: true

require_relative 'dice.rb'

puts "🎲🎲 Welcome to DiceGame 🎲🎲\n"

puts 'Insert player name:'
player_name = gets.chomp

puts "\nWelcome #{player_name}!"

puts 'Please select (r) to roll, (q) for quit'

loop do
  print '> '
  input = gets.chomp

  case input
  when 'r'
    player_dice = Dice.new.value
    opponent_dice = Dice.new.value

    puts "\nYou: #{player_dice}"
    puts "Opponent: #{opponent_dice}\n"

    if player_dice > opponent_dice
      puts '🎉 You won! 🎉'
    elsif opponent_dice > player_dice
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
