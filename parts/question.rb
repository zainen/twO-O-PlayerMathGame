class Question 
  attr_accessor :ask_question, :check
  def initialize
    @n1 = rand(1..20)
    @n2 = rand(1..20)
    @sum = @n1 + @n2
  end
  def current_player(player)
    @player = player
  end
  def ask_question
    puts "#{@player.name}, What is #{@n1} + #{@n2}?"
  end
  def check (answer)
    if answer == @sum 
      true 
    end
  end
end