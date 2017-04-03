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

  def scoring_rank_with_index
    scoring_rank.sort_by{|k, v| +v }.each.with_index(1) do |(user, avg), i|
      yield([user, avg.round(2)], i)
    end
  end

  def best_scoring_rank_with_index
    scoring_rank_with_index do |(user, avg), i|
      return [user, avg]
    end
  end

  def greens_rank_with_index
    greens_rank.sort_by{|k, v| -v}.each.with_index(1) do |(user, avg), i|
      yield([user, avg.round(2)], i)
    end
  end

  def best_greens_rank_with_index
    greens_rank_with_index do |(user, avg), i|
      return [user, avg]
    end
  end

  def fairways_rank_with_index
    fairways_rank.sort_by{|k, v| -v}.each.with_index(1) do |(user, avg), i|
      yield([user, avg.round(2)], i)
    end
  end

  def best_faiwrways_rank_with_index
    fairways_rank_with_index do |(user, avg), i|
      return [user, avg]
    end
  end

  def putting_rank_with_index
    putting_rank.sort_by{|k, v| +v }.each.with_index(1) do |(user, avg), i|
      yield([user, avg.round(2)], i)
    end
  end

  def best_putting_rank_with_index
    putting_rank_with_index do |(user, avg), i|
      return [user, avg]
    end
  end

  def birdies_rank_with_index
    birdies_rank.sort_by{|k, v| -v}.each.with_index(1) do |(user, avg), i|
      yield([user, avg.round(2)], i)
    end
  end

  def best_birdies_rank_with_index
    birdies_rank_with_index do |(user, avg), i|
      return [user, avg.round(2)]
    end
  end

  def pars_rank_with_index
    pars_rank.sort_by{|k, v| -v}.each.with_index(1) do |(user, avg), i|
      yield([user, avg.round(2)], i)
    end
  end

  def best_pars_rank_with_index
    pars_rank_with_index do |(user, avg), i|
      return [user, avg]
    end
  end
end
