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

  def greens_hit_average_nine_holes
    nineholerounds.average(:greenshit)
  end

  def greens_hit_average_nine_holes_rounded
    greens_hit_average_nine_holes.round(2)
  end

  def users_best_greens_nine_holes
    greens = []
    nineholerounds.each do |nineholeround|
      greens << nineholeround.greenshit
    end
    greens.sort.pop
  end

  def users_best_greens
    greens = []
    rounds.each do |round|
      greens << round.greens
    end
    greens.sort.pop
  end
end
