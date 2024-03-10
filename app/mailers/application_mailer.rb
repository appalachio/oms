# The top level, application mailer. All other mailers inherit form this one.
class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"
end
