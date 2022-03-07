require "./player.rb"
require "./game.rb"

player1 = Player.new(1)
player2 = Player.new(2)

while player1.lives > 0 and player2.lives > 0
  game = Game.new
  
  if Game.current_player == 1
    game.prompt(player1)
  else
    game.prompt(player2)
  end

  game.game_status(player1, player2)
end

