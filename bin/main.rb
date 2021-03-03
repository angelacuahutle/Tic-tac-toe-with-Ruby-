# !/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/board'

def tic_tac_toe
  player_x = Player.new('', 'X')
  player_o = Player.new('', 'O')
  board = Board.new
  introduction(board)
  player_x.name = get_player('first')
  player_o.name = get_player('second')
  puts "\nLet the game begin"
  play_game(player_x, player_o, board) 
end

def introduction(board)
  puts "Welcome to TIC-TAC-TOE game\n\n"
  puts board.display_board
  puts "\nType in your names to start the game\n"
end

def get_player(position)
end

puts 'Hello World!'
