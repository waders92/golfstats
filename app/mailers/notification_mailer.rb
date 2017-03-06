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
         subject: 'A lesson has been uploaded on Trakstats')
  end
end
