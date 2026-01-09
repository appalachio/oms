# == Schema Information
#
# Table name: pages
# Database name: primary
#
#  id                    :integer          not null, primary key
#  archived_at           :datetime
#  page_extra_attributes :json
#  page_type             :text             default("default"), not null
#  page_uuid             :text             not null
#  published_at          :datetime
#  slug                  :text             not null
#  subtitle              :text
#  title                 :text             not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_pages_on_page_uuid  (page_uuid) UNIQUE
#  index_pages_on_slug       (slug) UNIQUE
#  index_pages_on_title      (title)
#
require "test_helper"

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
