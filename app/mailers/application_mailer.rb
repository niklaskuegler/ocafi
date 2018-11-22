class ApplicationMailer < ActionMailer::Base
  default to: 'info@ocafi.de'
  layout 'mailer'
end
