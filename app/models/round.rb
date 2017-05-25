class Round < ActiveRecord::Base
  belongs_to :user
  has_many :notes
  after_create :send_round_email

  validates :course, presence: true, length: { minimum: 1 }
  validates :score, presence: true
  validates :greens, presence: true
  validates :fwys, presence: true
  validates :fwystotal, presence: true
  validates :putts, presence: true
  validates :birdies, presence: true
  validates :pars, presence: true

  scope :by_year, ->(year) { where('extract(year from created_at) = ?', year) }

  def send_round_email
    NotificationMailer.round_added(self).deliver
  end

  def year
    created_at.strftime('%Y')
  end

  def month
    created_at.strftime('%B')
  end

  def zero_birdie_round
    self.pars
  end

  def total_stretch_under
    self.pars + self.birdies
  end

  def total_holes_left
    (18 - total_stretch_under)
  end
end
