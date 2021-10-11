class Player
attr_accessor :player, :lives

  def initialize(player, lives)
    @name = player
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def game_over
    @lives = 0
  end
end