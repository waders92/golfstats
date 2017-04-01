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

  def best_scoring_average_name
    scoring_rank.sort.each do |(user, avg)|
      return user.name
    end
  end

  def best_scoring_average
    scoring_rank.sort.each do |(user, avg)|
      return avg
    end
  end

  def best_greens_rank_name
    greens_rank.sort_by{|k, v| -v}.each do |(user, avg)|
      return user.name
    end
  end

  def best_greens_rank
    greens_rank.sort_by{|k, v| -v}.each do |(user, avg)|
      return avg
    end
  end

  def best_faiwrways_rank_name
    fairways_rank.sort_by{|k, v| -v}.each do |(user, avg)|
      return user.name
    end
  end

  def best_faiwrways_rank
    fairways_rank.sort_by{|k, v| -v}.each do |(user, avg)|
      return avg
    end
  end

  def best_putting_rank_name
    putting_rank.sort.each do |(user, avg)|
      return user.name
    end
  end

  def best_putting_rank
    putting_rank.sort.each do |(user, avg)|
      return avg
    end
  end

  def best_birdie_average_name
    birdies_rank.sort_by{|k, v| -v}.each do |(user, avg)|
      return user.name
    end
  end

  def best_birdie_rank
    birdies_rank.sort_by{|k, v| -v}.each do |(user, avg)|
      return avg
    end
  end

  def best_par_rank_name
    pars_rank.sort_by{|k, v| -v}.each do |(user, avg)|
      return user.name
    end
  end

  def best_par_rank
    pars_rank.sort_by{|k, v| -v}.each do |(user, avg)|
      return avg
    end
  end

  def scoring_rank_with_index
    scoring_rank.sort_by{|k, v| +v }.each.with_index(1) do |(user, avg), i|
      yield([user, avg], i)
    end
  end

  def best_scoring_rank_with_index
    scoring_rank_with_index do |(user, avg), i|
      return [user, avg]
    end
  end
end
