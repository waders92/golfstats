class Nineholeround < ActiveRecord::Base
  belongs_to :user
  after_create :send_nine_hole_round_email

  validates :course, presence: true, length: { minimum: 1 }
  validates :score, presence: true
  validates :greenshit, presence: true
  validates :fwys, presence: true
  validates :fwystotal, presence: true
  validates :putts, presence: true
  validates :birdies, presence: true
  validates :pars, presence: true

  def send_nine_hole_round_email
    NotificationMailer.nine_hole_round_added(self).deliver
  end

  def year
    created_at.strftime('%Y')
  end

  def month
    created_at.strftime('%B (%Y)')
  end
end
