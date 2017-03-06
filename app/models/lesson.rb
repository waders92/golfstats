class Lesson < ActiveRecord::Base
  mount_uploader :video, VideoUploader
  belongs_to :user
  has_many :videos
  after_create :send_lesson_email

  validates :caption, presence: true, length: { minimum: 1, maximum: 250 }
  validates :video, presence: true

  def send_lesson_email
    NotificationMailer.lesson_added(self).deliver
  end
end
