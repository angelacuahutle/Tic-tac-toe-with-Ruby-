#spec/game_test.rb

require_relative '../lib/player'
require_relative '../lib/board'

describe Board do
  describe "#check_draw" do
    it "checks a draw" do
      # example conditions: let(:variable) { ... }
      # test_board = Board.new
      # player 1 moves
      # player 2 moves
      expect(available_slots.empty?).to be true
    end

    it "does not check a draw" do
      # example conditions: let(:variable) { ... }
      # test_board = Board.new
      # player 1 moves
      # player 2 moves
      expect(available_slots.empty?).to be false
    end
  end
end