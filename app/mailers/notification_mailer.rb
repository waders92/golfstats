class NotificationMailer < ActionMailer::Base
  default from: 'no-reply@Trakstats.com'

  def round_added(round)
    @round = round
    @round_owner = @round.user
    mail(to: @round_owner.email,
         subject: 'A round has been posted on Trakstats')
  end

  def lesson_added(lesson)
    @lesson = lesson
    @lesson_owner = @lesson.user
    mail(to: @lesson_owner.email,
         subject: 'A video has been uploaded on Trakstats')
  end

  def lesson_updated(lesson)
    @lesson = lesson
    @lesson_owner = @lesson.user
    mail(to: @lesson_owner.email,
         subject: 'Your video lesson is ready to view on Trakstats')
  end
end
