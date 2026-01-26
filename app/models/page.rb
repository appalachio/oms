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
class Page < ApplicationRecord
  enum :page_type, { default: "default", home_page: "home_page" }, default: :default, validate: true

  belongs_to :user

  has_rich_text :body
  has_many_attached :photos

  validates :title, :page_type, presence: true

  has_paper_trail
  include Archivable
  before_create :assign_page_uuid

  extend FriendlyId
  friendly_id :slug_candidates



  def assign_page_uuid
    self.page_uuid = SecureRandom.uuid if self.page_uuid.blank?
  end

  def slug_candidates
    [
      :title,
      [ :title, :subtitle ],
      [ :title, :subtitle, :published_at ],
      [ :title, :subtitle, :published_at, :page_uuid ]
    ]
  end

  def should_generate_new_friendly_id?
    title_changed? || subtitle_changed? || published_at_changed? || page_uuid_changed? || super
  end
end
