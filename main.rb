require "./Game.rb"
require "./Player.rb"
require "./Turn.rb"

player1 = Player.new(1)
player2 = Player.new(2)
game = Game.new(player1, player2)

def runGame(game)
  
  while game.winner == nil do
    turn = Turn.new(game)
    turn.ask
    answer = gets.chomp
    turn.evaluate(answer.to_i, game)
  end
  puts("Player#{game.winner.id} wins with #{game.winner.life} life left!")
  puts("--- Game Over ---")
  puts("Good bye!")
end

runGame(game)