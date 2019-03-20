require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { double :player }

  describe "#attack" do
    it "attacks a player with a certain amount of damage" do
      expect(player).to receive(:receive_damage).with(10)
      game.attack(player, 10)
    end
  end
end
