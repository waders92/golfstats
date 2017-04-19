module PuttingAverage
  def putting_average
    rounds.average(:putts)
  end

  def putting_average_rounded
    putting_average.round(2)
  end

  def users_best_putting_round
    putts = []
    rounds.each do |round|
      putts << round.putts
    end
    putts.sort.shift
  end
end
