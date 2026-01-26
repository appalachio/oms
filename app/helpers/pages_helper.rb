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
#  user_id               :integer          not null
#
# Indexes
#
#  index_pages_on_page_uuid  (page_uuid) UNIQUE
#  index_pages_on_slug       (slug) UNIQUE
#  index_pages_on_title      (title)
#  index_pages_on_user_id    (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
module PagesHelper
end
