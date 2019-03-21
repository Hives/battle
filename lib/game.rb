class Game
  attr_reader :turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = 0
  end

  def player1
    @players[0]
  end
  
  def player2
    @players[1]
  end

  def attack(player, hitpoints)
    player.receive_damage(hitpoints)
  end

  def increment_turn
    @turn += 1
  end

  def current_player
    @players[@turn % 2]
  end

  def other_player
    @players[(@turn + 1) % 2]
  end
end
