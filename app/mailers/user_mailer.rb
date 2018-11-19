class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:

  # en.user_mailer.welcome.subject

  def welcome_email
    @user = params[:user]
    @url = 'http://www.ocafi.de/users/sign_in'

    mail(to: @user.email, subject: "Welcome to Ocafi - Specialty Coffee")

  end
end
