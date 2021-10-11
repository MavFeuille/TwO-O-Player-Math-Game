class Player
attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end
  

  def lose_life
    @lives -= 1
  end

  def game_over
    @lives = 0
  end
end

player1 = Player.new("player1", 3)
player2 = Player.new("player2", 3)

