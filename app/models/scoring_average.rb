module ScoringAverage

  attr_reader :ranking

  def scoring_average
    rounds.average(:score)
  end

  def scoring_average_rounded
    scoring_average.round(2)
  end

  def best_scoring_average

  end


end
