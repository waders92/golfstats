module ScoringAverage
  def scoring_average
    rounds.average(:score)
  end

  def scoring_average_rounded
    scoring_average.round(2)
  end

  def scoring_average_nine_holes
    nineholerounds.average(:score)
  end

  def scoring_average_nine_holes_rounded
    scoring_average_nine_holes.round(2)
  end

  def users_best_score_nine_holes
    low_round = []
    nineholerounds.each do |nineholeround|
      low_round << nineholeround.score
    end
    low_round.sort.shift
  end

  def users_best_score
    low_round = []
    rounds.each do |round|
      low_round << round.score
    end
    low_round.sort.shift
  end
end
