class Lesson < ActiveRecord::Base
  mount_uploader :video, VideoUploader
  belongs_to :user
  has_many :videos

  validates :caption, presence: true, length: { minimum: 1, maximum: 250 }
  validates :video, presence: true
end
