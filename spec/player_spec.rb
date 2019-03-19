require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double :name }

  describe '#name' do
    it "it returns the player's name" do
      expect(player.name).to eq name
    end
  end

  describe '#hitpoints' do
    it "it returns the player's hitpoints" do
      expect(player.hitpoints).to eq 60
    end
  end

  describe '#attack' do
    it "reduces the player's hitpoints by a certain amount" do
      player.attack(10)
      expect(player.hitpoints).to eq 50
    end
  end
end
