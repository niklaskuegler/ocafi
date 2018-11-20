class ApplicationMailer < ActionMailer::Base
  default to: 'info@ocafi.de'
  default from: 'info@ocafi.de'
  layout 'mailer'
end
