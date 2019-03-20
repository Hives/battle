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
end
