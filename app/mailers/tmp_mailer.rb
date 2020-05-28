class TmpMailer < ActionMailer::Base
  default from: 'no-reply@bindle.io'
  layout 'mailer'

  def tmp_mail(email)
    subject = "Bindle - Time off"
    attachments["attachment.ics"] = create_attachment

    mail(:to => email, :subject => subject)
  end

  private

  def create_attachment
    "This is an attachment".bytes
  end
end
