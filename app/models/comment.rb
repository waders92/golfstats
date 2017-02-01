class Comment < ActiveRecord::Base

  belongs_to :round
  belongs_to :user
  validates :message, presence: true, length: { minimum: 1, maximum: 100 }

end