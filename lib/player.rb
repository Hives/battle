class Player
  attr_reader :name, :hitpoints

  DEFAULT_HIT_POINTS = 60

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HIT_POINTS
  end

  def attack(player, hitpoints)
    player.damage(hitpoints)
  end

  def damage(hitpoints)
    @hitpoints -= 10
  end
end
