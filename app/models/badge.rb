module Badge

  def badge_count

  end

  def rounds_left
    x = 20 - total_rounds
    return x
  end

  def ten_plus_fairways?
     if users_best_fairways >= 10
       return "You hit 10 or more fairways in a round!"
     else
       keep_tracking
     end
  end

  def nine_greens?
    if users_best_greens >= 9
      return "You hit 9 or more greens!"
    else
      return "Keep tracking to hit 9 or more greens!"
    end
  end

  def twelve_greens?
    if users_best_greens >= 12
      return "You hit 12 or more greens in a round!"
    else
      return "Keep trackin to hit 12 greens!"
    end
  end

  def three_birds?
    if users_best_birdie_total >= 3
      return "Made 3 birdies in a round!"
    else
      return "Keep tracking to make more birdies!"
    end
  end

  def five_birds?
    if users_best_birdie_total >= 5
      return "Made 5 birdies in a round!"
    else
      return "Keep tracking to make more birdies!"
    end
  end

  def five_pars?
    if users_best_par_total >= 5
      return "Made 5 pars in a round!"
    else
      return "Keep tracking to make more pars!"
    end
  end

  def ten_pars?
    if users_best_par_total >= 10
      return "Made 10 pars in a round"
    else
      return "Keep tracking to make more pars!"
    end
  end

  def twelve_pars?
    if users_best_par_total >= 12
      return "Made 12 or more pars in a round!"
    else
      return "Keep tracking to make more pars!"
    end
  end

  def twenty_rounds?
    if total_rounds >= 20
      return "You have posted 20 rounds!"
    else
      return "Keep tracking to get to 20 rounds!"
    end
  end

  def thirty_putts?
    if users_best_putting_round <= 30
      return "You had less 30 or fewer putts!"
    else
      return "Keep tracking to break 30 putts!"
    end
  end

  def twenty_five_putts?
    if users_best_putting_round <= 25
      return "You had 25 or fewer putts!"
    else
      return "Keep tracking to break 25 putts!"
    end
  end

  def break_85?
    if users_best_score < 85
      return "You broke 85!"
    else
      return "Keep tracking to break 85!"
    end
  end

  def break_80?
    if users_best_score < 80
      return "You broke 80!"
    else
      return "Keep tracking to break 80!"
    end
  end

  def break_75?
    if users_best_score < 75
      return "You broke 75!"
    else
      return "Keep tracking to break 75!"
    end
  end

  def break_70?
    if users_best_score < 70
      return "You broke 70!"
    else
      return "Keep tracking to break 70!"
    end
  end

end
