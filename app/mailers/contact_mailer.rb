class ContactMailer < ApplicationMailer

  def contact_email_generate(message)
    @message = message
    mail(to: "asble@ucdavis.edu", subject: "Message sent from your Portfolio!")
  end
end
