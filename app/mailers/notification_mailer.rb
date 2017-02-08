class NotificationMailer < ActionMailer::Base
  default from: 'no-reply@Trakstats.com'

  def round_added(round)
    @round = round
    @round_owner = @round.user
    mail(to: @round_owner.email,
         subject: 'A round has been posted on Trakstats')
  end
end
