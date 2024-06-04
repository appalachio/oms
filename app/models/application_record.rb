# frozen_string_literal: true

# The top level, application record from which all other models inherit
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
