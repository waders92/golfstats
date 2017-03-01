class Lesson < ActiveRecord::Base
  belongs_to :user
  has_many :photos

  validates :caption, presence: true, length: { minimum: 3, maximum: 5000 }
  validates :picture, presence: true
end
