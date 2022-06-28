class Turn
  def initialize(game)
    @player = game.current_player
    @watcher = game.current_watcher
    @num1 = rand(1..9)
    @num2 = rand(1..9)
    @sum = @num1 + @num2
    @question = "Player #{@watcher.id}: What does #{@num1} plus #{@num2} equal?"
  end

  def ask
    puts(@question)
  end

  def evaluate(answer, game)
    if (answer == @sum)
      puts("Player#{@watcher.id}: YES! You are correct.")
      puts("P1: #{game.player1.life} vs P2: #{game.player2.life}")
      puts("--- NEW TURN ---")
      game.switch_players
    else
      @player.lose_a_life
      puts("Player#{@watcher.id}: Seriously? No!")
      puts("P1: #{game.player1.life} vs P2: #{game.player2.life}")
      if (game.winner == nil)
        puts("--- NEW TURN ---")
        game.switch_players
      end
    end
  end
end