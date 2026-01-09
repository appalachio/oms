# == Schema Information
#
# Table name: pages
# Database name: primary
#
#  id                    :integer          not null, primary key
#  archived_at           :datetime
#  page_extra_attributes :json
#  page_type             :text
#  page_uuid             :text
#  published_at          :datetime
#  slug                  :text
#  subtitle              :text
#  title                 :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
require "test_helper"

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
