module RoundsHelper
  def scoring_rank
    Round.group(:user).average(:score)
  end

  def greens_rank
    Round.group(:user).average(:greens)
  end

  def fairways_rank
    Round.group(:user).average(:fwys)
  end

  def putting_rank
    Round.group(:user).average(:putts)
  end

  def birdies_rank
    Round.group(:user).average(:birdies)
  end

  def pars_rank
    Round.group(:user).average(:pars)
  end
end
