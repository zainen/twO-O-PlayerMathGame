class Player
  attr_reader :name
  attr_accessor :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
end

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

class Game
  attr_accessor :game
  def game
    game_master = Question.new
    p1 = Player.new('Max')
    p2 = Player.new("Jeff")
    turn = 0
    @player = nil
    while p1.lives > 0 || p2.lives > 0
      if turn % 2 == 0 
        @player = p1
        turn += 1
      else
        @player = p2
        turn += 1
      end
      game_master.current_player(@player)
      if p2.lives == 0
        return puts "#{@player.name} Wins!!! #{p1.name}: #{p1.lives} to #{p2.name}: #{p2.lives} ~~~GAME OVER~~~"
      elsif p1.lives == 0
        return puts "#{@player.name} Wins!!! #{p1.name}: #{p1.lives} to #{p2.name}: #{p2.lives} ~~~GAME OVER~~~"
      end
      game_master.ask_question()
      print "#{@player.name}> "
      answer = $stdin.gets.chomp.to_i
      if game_master.check(answer)
        puts "GREAT JOB!!!"
      else
        puts "wow... u dum"
        @player.lives -= 1
      end
      puts "Current Score Player 1: #{p1.lives} to Player 2: #{p2.lives}"
      puts "---- New Turn ----"
    end
  end
end

new_game = Game.new
puts new_game.game
