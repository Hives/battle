require 'player'

describe Player do
  subject(:player1) { described_class.new(name1) }
  subject(:player2) { described_class.new(name2) }
  let(:name1) { double :name1 }
  let(:name2) { double :name2 }

  describe '#name' do
    it "it returns the player's name" do
      expect(player1.name).to eq name1
    end
  end

  describe '#hitpoints' do
    it "it returns the player's hitpoints" do
      expect(player1.hitpoints).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it "reduces the player's hitpoints" do
      expect { player1.receive_damage(10) }.to change { player1.hitpoints }.by(-10)
    end
  end
end
