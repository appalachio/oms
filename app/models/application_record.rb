# The top level, application model. All other models inherit from this one.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
