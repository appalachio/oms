# frozen_string_literal: true

# The root application mailer. All other mailers inherit from this one.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
