class NotificationMailer < ActionMailer::Base
  default from: 'no-reply@Trakstats.com'

  def round_added(round)
    @round = round
    @round_owner = @round.user
    mail(to: @round_owner.email,
         subject: 'A round has been posted on Trakstats')
  end

  def nine_hole_round_added(nineholeround)
    @nineholeround = nineholeround
    @nineholeround_owner = @nineholeround.user
    mail(to: @nineholeround_owner.email,
        subject: 'A 9 hole round has been posted on Trakstats')
  end

  def lesson_added(lesson)
    @user = User.find(1)
    @lesson = lesson
    @lesson_owner = @lesson.user
    mail(to: @lesson_owner.email, bcc: @user.email,
         subject: 'A video has been uploaded on Trakstats')
  end

  def lesson_updated(lesson)
    @lesson = lesson
    @lesson_owner = @lesson.user
    mail(to: @lesson_owner.email,
         subject: 'Your video lesson is ready to view on Trakstats')
  end
end
