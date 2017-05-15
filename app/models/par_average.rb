module ParAverage
  def par_average
    rounds.average(:pars)
  end

  def par_average_rounded
    par_average.round(2)
  end

  def par_average_nine_holes
    nineholerounds.average(:pars)
  end

  def par_average_nine_holes_rounded
    par_average_nine_holes.round(2)
  end

  def users_best_par_total_nine_holes
    pars = []
    nineholerounds.each do |nineholeround|
      pars << nineholeround.pars
    end
    pars.sort.pop
  end

  def users_best_par_total
    pars = []
    rounds.each do |round|
      pars << round.pars
    end
    pars.sort.pop
  end
end
