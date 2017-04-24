module GreensAverage
  def greens_hit_total
    rounds.sum(:greens)
  end

  def total_greens_possible
    rounds.count * 18
  end

  def greens_hit_average
    rounds.average(:greens)
  end

  def greens_hit_average_rounded
    greens_hit_average.round(2)
  end

  def users_best_greens
    greens = []
    rounds.each do |round|
      greens << round.greens
    end
    greens.sort.pop
  end
end
