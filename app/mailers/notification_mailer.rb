class NotificationMailer < ActionMailer::Base
  default from: "no-reply@Trakstats.com"

  def round_added
    mail(to: "wade.carlson@pga.com",
          subject: "A round has been posted on Trakstats")
  end

end
