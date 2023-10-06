# frozen_string_literal: true

# The root application model. All other models inherit from this one.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
