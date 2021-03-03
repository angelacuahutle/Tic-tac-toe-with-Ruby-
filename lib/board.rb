class Board
  attr_reader :cell, :board_positions
  attr_accessor :available_slots

  def initialize
    @cell = [['', '', ''], ['', '', ''], ['', '', '']]
    @available_slots = *(1..9)
    @board_positions = { 1 => [0, 0], 2 => [0, 1], 3 => [0, 2],
                         4 => [1, 0], 5 => [1, 1], 6 => [1, 2],
                         7 => [2, 0], 8 => [2, 1], 9 => [2, 2] }
  end

  def display_board
    " #{@cell[0][0]} | #{@cell[0][1]} | #{@cell[0][2]}  \n---+---+---\n" \
    " #{@cell[1][0]} | #{@cell[1][1]} | #{@cell[1][2]}  \n---+---+---\n" \
    " #{@cell[2][0]} | #{@cell[2][1]} | #{@cell[2][2]}  \n "
  end

  def display_available_slots
    available_slots.join(', ')
  end

  def check_draw
    available_slots.empty?
  end

  def update_available_slots(value)
    available_slots.reject! { |move| move == value }
  end
end


