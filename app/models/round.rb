class Round < ActiveRecord::Base

  belongs_to :user

  validates :course, presence: true, length: { minimum: 1 }
  validates :score, presence: true
  validates :greens, presence: true
  validates :greenstotal, presence: true
  validates :fwys, presence: true
  validates :fwystotal, presence: true
  validates :putts, presence: true
end
