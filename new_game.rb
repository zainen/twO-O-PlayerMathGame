require './parts/player.rb'
require './parts/question.rb'
require './parts/game.rb'

# ~~~~~~~ Players ~~~~~~~
p1 = Player.new('Max')
p2 = Player.new("Jeff")

# ~~~~~~ Game ~~~~~~
new_game = Game.new(p1, p2)
puts new_game.game
