class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player2
    @current_watcher = player1
  end

  attr_reader :player1
  attr_reader :player2
  attr_reader :current_player
  attr_reader :current_watcher

  def winner
    if self.player1.life == 0
      return player2
    elsif self.player2.life == 0
      return player1
    else
      return nil
    end
  end

  def switch_players
    temp = @current_player
    @current_player = @current_watcher
    @current_watcher = temp
  end

end