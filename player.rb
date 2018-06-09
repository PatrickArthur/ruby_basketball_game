class Player
  attr_reader :player
  attr_accessor :points

  SCORE_KEY = {two: 2, three: 3, miss: 0, foul: 1}

  def initialize(player)
    @player = player
    @points = []
  end

  def name
    @player
  end

  def action
    result = SCORE_KEY.to_a.sample(1).last
    puts "#{player} scored #{result.last} from a #{result.first}"
    points << result.last
  end

  def score
    points.empty? ? 0 : points.inject(:+)
  end
end
