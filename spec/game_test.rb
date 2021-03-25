#spec/game_test.rb

require_relative '../lib/player'
require_relative '../lib/board'

describe Board do
  describe "#check_draw" do
    let(:board) { Board.new }
    let(:empty_slots) { [] }
    let(:available_slots) { [1,6,3] }
    it "checks a draw" do
      expect(empty_slots.empty?).to be true
    end
    it "does not check a draw" do
      expect(available_slots.empty?).to be false
    end
  end
end

describe Player do
  let(:board) { Board.new }
  let(:player_x) do
    first_player = get_player('first')
    Player.new(first_player, 'X')
  end
  let(:player_o) do
    second_player = get_player('second')
    Player.new(second_player, 'O')
  end
  let(:wins) { [6,4,5] }
  let(:not_wins) { [1,4,6] }
  describe "#check_winner" do
    it "checks a winner" do
      expect(wins.any?).to be true
    end
    it "checks no winner" do
      expect(not_wins.any?).to be false
    end
  end
end
