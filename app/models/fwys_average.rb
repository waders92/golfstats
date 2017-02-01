module FwysAverage

  def fwy_hit_total
    rounds.sum(:fwys)
  end

  def total_fwys_possible
    rounds.sum(:fwystotal)
  end

  def fwys_hit_average
    fwy_hit_total / total_fwys_possible.to_f * 100
  end

  def fwys_hit_average_rounded
    fwys_hit_average.round(2)
  end

end
