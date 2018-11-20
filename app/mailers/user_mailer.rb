class UserMailer < ApplicationMailer
  default from: 'info@ocafi.de'

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Ocafi - Green Coffee')
  end

end
