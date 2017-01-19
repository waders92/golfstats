class Round < ActiveRecord::Base

  validates :course, presence: true
end
