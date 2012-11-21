class DeploymentMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def welcome_email(notification)
    @email = notification.email
    mail(:to => @email, :subject => "Deployment Portal Notifications")
  end
end
