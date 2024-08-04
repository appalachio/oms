# frozen_string_literal: true

# The top level, application mailer form which all other mailers inherit
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
