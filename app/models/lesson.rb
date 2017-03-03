class Lesson < ActiveRecord::Base
  mount_uploader :video, VideoUploader
  belongs_to :user
  has_many :videos

  validates :caption, presence: true, length: { minimum: 3, maximum: 5000 }
  validates :video, presence: true
end
