class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:

  # en.user_mailer.welcome.subject

  def sample_email(user)
    @user = user
    mg_client = Mailgun::Client.new ENV['api_key']
    message_params = {:from    => 'info@ocafi.de',
                      :to      => @user.email,
                      :subject => 'Sample Mail using Mailgun API',
                      :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    mg_client.send_message ENV['domain'], message_params
  end



  #def welcome(user)
   # @user = user  # Instance variable => available in view

  #  mail(to: @user.email, subject: 'Welcome to Ocafi')
    # This will render a view in `app/views/user_mailer`!
  #end
end
