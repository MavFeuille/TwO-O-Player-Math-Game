class Question
  attr_reader :num1, :num2 , :model_answer
  def initialize
    @num1 = rand(1..40)
    @num2 = rand(1..40)
    @model_answer = @num1 + @num2
  end

  def new_question
    

    puts " ------- NEW TURN -------"
    puts "Player : What does #{num1} plus #{num2} euqal?"
    print "> "
    answer = $stdin.gets.chomp.to_i
    # puts num1 + num2
    # puts "answer = #{answer}"
   
    if answer == model_answer
      puts "Yes! You are correct."
      return true
    else
      puts "Incorrect!"
      return false
    end
   
  end

end

# q1 = Question.new
# p q1.new_question