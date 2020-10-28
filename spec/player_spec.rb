require 'player'

describe Player do
  subject (:player1) { Player.new('Dave') }
  subject (:player2) { Player.new('Mittens') }

  describe "#name" do

    # it {is_expected.to respond_to(:name)}

    it "returns it's name" do
      expect(player1.name).to eq 'Dave'
    end
  end

  describe "#hit_points" do

    # it {is_expected.to respond_to(:hit_points)}

    it "returns starting hit points" do
      expect(player1.hit_points).to eq 60
    end
  end

  describe "#attack" do
    it "attacks player 2 and reduces their HP by 10" do
      player1.attack(player2)
      expect(player2.hit_points).to eq 50
    end
  end

  describe "#receive_damage" do
    it "reduces player hit points by 10" do
      expect { player2.receive_damage }.to change { player2.hit_points }.by(-10)
    end
  end
end
