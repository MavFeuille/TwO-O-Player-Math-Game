class Player
attr_accessor :name, :lives

  def initialize(name, lives)
    @name = player
    @lives = lives
  end
  

  def lose_life
    @lives -= 1
  end
  puts Player.lose_life

  def game_over
    @lives = 0
  end
end

player1 = Player.new("player1", 3)
player2 = Player.new("player2", 3)