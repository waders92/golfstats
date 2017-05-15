module BirdieAverage
  def birdie_average
    rounds.average(:birdies)
  end

  def birdie_average_rounded
    birdie_average.round(2)
  end

  def birdie_average_nine_holes
    nineholerounds.average(:birdies)
  end

  def birdie_average_nine_holes_rounded
    birdie_average_nine_holes.round(2)
  end

  def users_best_birdie_total_nine_holes
    birds = []
    nineholerounds.each do |nineholeround|
      birds << nineholeround.birdies
    end
    birds.sort.pop
  end

  def users_best_birdie_total
    birds = []
    rounds.each do |round|
      birds << round.birdies
    end
    birds.sort.pop
  end
end
