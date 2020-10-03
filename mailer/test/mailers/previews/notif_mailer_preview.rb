# Preview all emails at http://localhost:3000/rails/mailers/notif_mailer
class NotifMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notif_mailer/new_notif
  def new_notif
    NotifMailer.new_notif(q,p,email)
  end

end
