class Game
  attr_reader :player1, :player2

  def self.start(player, player1, player2)
    new(player1, player2).game_in_process(player)
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def game_in_process(player)
    if player1.score < 5 && player2.score < 5
      puts "Shoot or pass ball?"
      choice = gets.chomp
      choice == "shoot" ? shoot(player) : Game.start(player, player1, player2)
    else
      winner
    end
  end

  private

  def shoot(player)
    if player == "player1"
      player1.action
      Game.start("player2", player1, player2)
    else
      player2.action
      Game.start("player1", player1, player2)
    end
  end

  def winner
    if player1.score > player2.score
      puts "#{player1.name} beats #{player2.name} by #{player1.score - player2.score}"
    else
      puts "#{player2.name} beats #{player1.name} by #{player2.score - player1.score}"
    end
  end
end
