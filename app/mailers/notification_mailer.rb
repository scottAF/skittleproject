class NotificationMailer < ApplicationMailer
  default from: "no-reply@skittleapp.com"

  def comment_added
    mail(to: "uofoduck14@gamil.com",
        subject: "A comment has been added to you place.")
  end
end
