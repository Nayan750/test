class ContactMailer < ApplicationMailer

  default from: "from@example.com"
  layout "mailer"
  
  def contact(message)
    @message = message
    mail(to: 'hatim@auzmena.com', subject: 'Test')
  end
end
