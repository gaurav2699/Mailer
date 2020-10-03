class NotifMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notif_mailer.new_notif.subject
  #
  def new_notif(q,p, email)
    @subject=q
    @body=p


    mail to: email,
          subject: @subject
  end
end
