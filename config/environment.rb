# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#ActionMailer::Base.smtp_settings = {
#  :port           => ENV['MAILGUN_SMTP_PORT'],
#  :address        => ENV['MAILGUN_SMTP_SERVER'],
#  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
#  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
#  :domain         => 'ocafi.de',
#  :authentication => :plain,
#}
#ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address        => 'email-smtp.eu-west-1.amazonaws.com',
  :port           => '25',
  :authentication => :plain,
  :user_name      => ENV['AWS_USERNAME'],
  :password       => ENV['AWS_PASSWORD'],
  :domain         => 'www.ocafi.de'
}
ActionMailer::Base.delivery_method = :smtp
