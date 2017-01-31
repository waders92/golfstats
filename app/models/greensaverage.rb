module GreensAverage

  def greens_hit_total
    rounds.sum(:greens)
  end

  def total_greens_possible
    rounds.sum(:greenstotal)
  end

  def greens_hit_average
    greens_hit_total / total_greens_possible.to_f * 100
  end

  def greens_hit_average_rounded
    greens_hit_average.round(2)
  end

end
