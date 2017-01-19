class Round < ActiveRecord::Base

  validates :course, presence: true
  validates :round, presence: true
  validates :greenshit, presence: true
  validates :greenstotal, presence: true
  validates :fwyhit, presence: true
  validates :fwytotal, presence: true
  validates :putts, presence: true
end
