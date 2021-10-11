require './player'
# require './question'

class Game
  def initialize
    @total_lives = 3
    @player1 = Player.new("player1", 3)
    @player2 = Player.new("player2", 3)
    @turn = 1
  end

  

  def start
    puts "Are you ready? >> Game start! <<"
    
    while @player1.lives > 0 && @player2.lives > 0
      question = Question.new
      puts question.new_question
      
    end
  end


end

# game = Game.new
# puts game.start