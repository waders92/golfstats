class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rounds
  has_many :messages

  def name
    @name = [first_name, last_name].join(" ")
  end

  def scoring_average
    rounds.average(:score)
  end

  def scoring_average_rounded
    scoring_average.round(2)
  end

  def putting_average
    rounds.average(:putts)
  end

  def putting_average_rounded
    putting_average.round(2)
  end

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
