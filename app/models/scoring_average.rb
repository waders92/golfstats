module ScoringAverage

  def scoring_average
    rounds.average(:score)
  end


  def scoring_average_rounded
    scoring_average.round(2)
  end

  def best_scoring_average
      @users.each do |user|
      user.scoring_average_rounded.sort.pluck
      end
  end

end
