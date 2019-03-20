class Player
  attr_reader :name, :hitpoints

  DEFAULT_HIT_POINTS = 60

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HIT_POINTS
  end

  def receive_damage(hitpoints)
    @hitpoints -= hitpoints
  end
end
