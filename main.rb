require "./Player"
require "./Game"

player1 = Player.new("Tom")
player2 = Player.new("Jerry")

game = Game.new(player1, player2)
game.start
 
