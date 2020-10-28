class Player
DEFAULT_HIT_POINTS = 60
attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = Player::DEFAULT_HIT_POINTS
  end

  def attack(player2)
    player2.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end
end
