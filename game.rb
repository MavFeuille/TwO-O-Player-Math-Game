require './player'
# require './question'

class Game
  def initialize
    @total_lives = 3
    @player1 = Player.new("player1", 3)
    @player2 = Player.new("player2", 3)
    @current_player = @player1 #by default start from player1's turn
  end


  def start
    puts "Welcome! Are you ready? >> Game start! <<"
    
    while @player1.lives > 0 && @player2.lives > 0
      question = Question.new
      question.new_question(@current_player.name)
      print "> "
      answer = $stdin.gets.chomp.to_i
      if !question.check_answer (answer) 
        update_lives(@current_player)
      end
      update_turn(@current_player)
      
    end
  end


  def update_turn(current_player)
    #if current turn is player 1, return next turn as player 2, otherwise it will be player1's turn
   if current_player == @player1
      @current_player = @player2
   else
    @current_player = @player1

   end
  end


  def update_lives(current_player)
    if current_player == @player1
      @player1.lose_life
    else
      @player2.lose_life
    end
    puts "Player 1: #{@player1.lives}/3 vs Player 2: #{@player2.lives}/3"

    if @player1.lives == 0 || @player2.lives ==0
      game_over
    end
   
  end

  def game_over
    if @player1.lives != 0
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    else
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end


end

# game = Game.new
# puts game.start