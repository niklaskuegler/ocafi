ActionMailer::Base.smtp_settings = {
  address: 'smtp.mailgun.org',
  port: 587,
  domain: 'gmail.com',
  Username: ENV['MAILGUN_USERNAME'],
  Password: ENV['MAILGUN_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}
