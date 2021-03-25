class Player
  WINNING_COMBINATIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
  attr_writer :selection
  attr_reader :name

  def initialize(name, marker)
    @name = name
    @marker = marker
    @selection = []
  end

  def play(board, value)
    @selection << value
    board.cell[board.board_positions[value][0]][board.board_positions[value][1]] = @marker
    board.display_board
  end

  def check_winner
    winner = false
    if @selection.length >= 3
      wins = []
      WINNING_COMBINATIONS.each do |posible_wins|
        wins.push((@selection.sort & posible_wins) == posible_wins)
      end
      winner = wins.any?
    end
    winner
  end
end
