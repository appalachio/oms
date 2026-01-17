class ApplicationController < ActionController::Base
  # Track which user is responsible for changing a model
  before_action :set_paper_trail_whodunnit
end
