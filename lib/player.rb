class Player
  attr_reader :name, :hitpoints

  INITIAL_HITPOINTS = 60

  def initialize(name)
    @name = name
    @hitpoints = INITIAL_HITPOINTS
  end

  def attack(hp)
    @hitpoints -= hp
  end
end
