module BirdieAverage
  def birdie_average
    rounds.average(:birdies)
  end

  def birdie_average_rounded
    birdie_average.round(2)
  end
end
