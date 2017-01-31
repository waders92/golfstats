module PuttingAverage

  def putting_average
    rounds.average(:putts)
  end

  def putting_average_rounded
    putting_average.round(2)
  end

end
