require './player'
require './game'

class BasketballGame
  attr_reader :player1, :player2

  def self.play(player1, player2)
    new(player1, player2).start_game
  end

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def start_game
    Game.start("player1", player1, player2)
  end
end

BasketballGame.play("pat", "arthur")
