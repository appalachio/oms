# frozen_string_literal: true

# The top level, application controller from which all other controllers inherit
class ApplicationController < ActionController::Base
  # Track which user makes a change to a model
  before_action :set_paper_trail_whodunnit
end
