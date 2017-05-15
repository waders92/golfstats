module FwysAverage
  def fwy_hit_total
    rounds.sum(:fwys)
  end

  def total_fwys_possible
    rounds.sum(:fwystotal)
  end

  def fwys_hit_average
    rounds.average(:fwys)
  end

  def fwys_hit_average_rounded
    fwys_hit_average.round(2)
  end

  def fwys_hit_average_nine_holes
    nineholerounds.average(:fwys)
  end

  def fwys_hit_average_nine_holes_rounded
    fwys_hit_average_nine_holes.round(2)
  end

  def users_best_fairways_nine_holes
    fwys = []
    nineholerounds.each do |nineholeround|
      fwys << nineholeround.fwys
    end
    fwys.sort.pop
  end

  def users_best_fairways
    fwys = []
    rounds.each do |round|
      fwys << round.fwys
    end
    fwys.sort.pop
  end
end
