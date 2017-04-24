module ParAverage
  def par_average
    rounds.average(:pars)
  end

  def par_average_rounded
    par_average.round(2)
  end

  def users_best_par_total
    pars = []
    rounds.each do |round|
      pars << round.pars
    end
    pars.sort.pop
  end
end
