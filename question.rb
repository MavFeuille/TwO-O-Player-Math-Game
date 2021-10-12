class Question
  attr_reader :num1, :num2 , :model_answer, :current_player

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @model_answer = @num1 + @num2
    # @current_player = current_player
  end

  def new_question(current_player)
    puts " ------- NEW TURN -------"
    puts "#{current_player}: What does #{num1} plus #{num2} euqal?"
    
  
  end

  def check_answer(answer)
    puts num1 + num2
    puts "Correct answer = #{answer}"
    if answer == model_answer
      puts "Yes! You are correct."
      return true
    else
      puts "Incorrect!"
      return false
    end
  end
end

# question = Question.new
# question.new_question