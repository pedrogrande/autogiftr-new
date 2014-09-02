class DeliveryNotificationMailer < ActionMailer::Base
  default from: "pete@example.com"

  def notify(occasion)
    @occasion = occasion
    @user = @occasion.recipient.user
    mail(to: @user.email, subject: 'Your delivery has been sent')
  end
end
