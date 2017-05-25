class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :round
  validates :message, presence: true, length: { minimum: 3 }
end
