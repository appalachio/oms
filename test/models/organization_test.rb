# == Schema Information
#
# Table name: organizations
# Database name: primary
#
#  id            :integer          not null, primary key
#  archived_at   :datetime
#  contact_email :text
#  domain        :text
#  name          :text
#  slug          :text
#  subdomain     :text
#  website_theme :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
