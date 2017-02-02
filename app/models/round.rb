class Round < ActiveRecord::Base

  belongs_to :user
  has_many :comments

  validates :course, presence: true, length: { minimum: 1 }
  validates :score, presence: true
  validates :greens, presence: true
  validates :fwys, presence: true
  validates :fwystotal, presence: true
  validates :putts, presence: true
end
