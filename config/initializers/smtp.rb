ActionMailer::Base.smtp_settings = {
  address: 'smtp.ocaficoffee.com',
  port: 25,
  domain: 'heroku.com',
  Username: ENV['POSTMARK_API_KEY'],
  Password: ENV['POSTMARK_API_TOKEN'],
  authentication: :CRAM_MD5,
  enable_starttls_auto: true
}
