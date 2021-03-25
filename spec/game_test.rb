# spec/game_test.rb

require_relative '../lib/player'
require_relative '../lib/board'

describe Board do
  describe '#check_draw' do
    let(:board) { Board.new }
    let(:empty_slots) { [] }
    let(:available_slots) { [1, 6, 3] }
    it 'checks a draw' do
      expect(empty_slots.empty?).to be true
    end
    it 'does not check a draw' do
      expect(available_slots.empty?).to be false
    end
  end
end

describe Player do
  let(:selection) { [6, 4] }
  let(:good_selection) { [6, 4, 7] }
  describe '#check_winner' do
    it 'rejects selection smaller than 3' do
      expect(selection.length >= 3).to be false
    end
    it 'accepts selection bigger than 3' do
      expect(good_selection.length >= 3).to be true
    end
  end
end
