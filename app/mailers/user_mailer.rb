class UserMailer < ApplicationMailer
  default from: 'info@ocafi.de'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Ocafi - Green Coffee')
  end

end
