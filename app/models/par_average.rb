module ParAverage

  def par_average
    rounds.average(:pars)
  end

  def par_average_rounded
    par_average.round(2)
  end
end
