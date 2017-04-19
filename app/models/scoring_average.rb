module ScoringAverage
  def scoring_average
    rounds.average(:score)
  end

  def scoring_average_rounded
    scoring_average.round(2)
  end

  def users_best_score
    low_round = []
    rounds.each do |round|
      low_round  << round.score
    end
    low_round.sort.shift
  end

  def users_best_greens
    greens = []
    rounds.each do |round|
      greens << round.greens
    end
    greens.sort.pop
  end

  def users_best_fairways
    fwys = []
    rounds.each do |round|
      fwys << round.fwys
    end
    fwys.sort.pop
  end

  def users_best_putting_round
    putts = []
    rounds.each do |round|
      putts << round.putts
    end
    putts.sort.shift
  end

  def users_best_birdie_total
    birds = []
    rounds.each do |round|
      birds << round.birdies
    end
    birds.sort.pop
  end

  def users_best_par_total
    pars = []
    rounds.each do |round|
      pars << round.pars
    end
    pars.sort.pop
  end

end
