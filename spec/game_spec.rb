require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe 'initialisation' do
    it 'accepts one player' do
      expect(game.player1).to eq player1
    end
    it '...and another player' do
      expect(game.player2).to eq player2
    end
  end

  describe "#attack" do
    it "attacks a player with a certain amount of damage" do
      expect(player1).to receive(:receive_damage).with(10)
      game.attack(game.player1, 10)
    end
  end

  describe '#increment_turn' do
    it 'increments the turn counter' do
      expect { game.increment_turn }.to change { game.turn }.by(1)
    end
  end

  describe '#current_player' do
    context "when initialised" do
      it 'returns player 1' do
        expect(game.current_player).to eq player1
      end
    end
    context "after turn counter incremented once" do
      it 'returns player 2' do
        game.increment_turn
        expect(game.current_player).to eq player2
      end
    end
    context "after turn counter incremented twice" do
      it 'returns player 1' do
        2.times { game.increment_turn }
        expect(game.current_player).to eq player1
      end
    end
    context "after turn counter incremented three times" do
      it 'returns player 2' do
        3.times { game.increment_turn }
        expect(game.current_player).to eq player2
      end
    end
  end

  describe '#other_player' do
    context "when initialised" do
      it 'returns player 2' do
        expect(game.other_player).to eq player2
      end
    end

    context "after turn counter incremented once" do
      it 'returns player 1' do
        game.increment_turn
        expect(game.other_player).to eq player1
      end
    end
  end

end
