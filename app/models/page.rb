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
class Page < ApplicationRecord
  has_rich_text :body
  has_many_attached :photos

  enum :page_type, { default: "default", home_page: "home_page" }, default: :default, validate: true

  validates :title, :page_type, presence: true

  has_paper_trail



  extend FriendlyId
  friendly_id :slug_candidates

  def slug_candidates
    [
      :title,
      [ :title, :subtitle ],
      [ :title, :subtitle, :published_at ]
    ]
  end

  def should_generate_new_friendly_id?
    title_changed? || subtitle_changed? || published_at_changed? || super
  end



  before_create :assign_page_uuid

  def assign_page_uuid
    self.page_uuid = SecureRandom.uuid if self.page_uuid.blank?
  end
end
