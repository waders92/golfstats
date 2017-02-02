module ScoringAverage

  def scoring_average
    rounds.average(:score)
  end

  def scoring_average_rounded
    scoring_average.round(2)
  end

  def best_user_scoring_average
    x = []
    user.scoring_average_rounded.each do |score|
      x << score
    end
    x.sort
    x.pluck
  end

end
