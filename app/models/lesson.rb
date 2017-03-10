class Lesson < ActiveRecord::Base
  mount_uploader :video, VideoUploader
  belongs_to :user
  has_many :videos
  after_create :send_lesson_email
  after_update :send_update_email

  validates :caption, presence: true
  validates :video, presence: true

  def send_lesson_email
    NotificationMailer.lesson_added(self).deliver
  end

  def send_update_email
    NotificationMailer.lesson_updated(self).deliver
  end
end
