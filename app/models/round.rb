class Round < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  after_create :send_round_email

  validates :course, presence: true, length: { minimum: 1 }
  validates :score, presence: true
  validates :greens, presence: true
  validates :fwys, presence: true
  validates :fwystotal, presence: true
  validates :putts, presence: true
  validates :birdies, presence: true
  validates :pars, presence: true

  def send_round_email
    NotificationMailer.round_added(self).deliver
  end

  def year
    self.created_at.strftime('%Y')
  end

  def month
    self.created_at.strftime('%B')
  end
end
