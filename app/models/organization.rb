# == Schema Information
#
# Table name: organizations
# Database name: primary
#
#  id                :integer          not null, primary key
#  archived_at       :datetime
#  name              :text             not null
#  organization_uuid :text             not null
#  slug              :text             not null
#  subdomain         :text             not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_organizations_on_name               (name) UNIQUE
#  index_organizations_on_organization_uuid  (organization_uuid) UNIQUE
#  index_organizations_on_slug               (slug) UNIQUE
#  index_organizations_on_subdomain          (subdomain) UNIQUE
#
class Organization < ApplicationRecord
  has_many :users
  has_many :pages

  has_rich_text :about
  has_one_attached :logo do |attachable|
    attachable.variant :thumbnail, resize_to_limit: [ 200, 200 ], preprocessed: true
  end

  validates :name, :about, :subdomain, :logo, presence: true
  validates :name, :subdomain, uniqueness: true

  has_paper_trail
  include Archivable
  before_create :assign_organization_uuid

  extend FriendlyId
  friendly_id :name



  def assign_organization_uuid
    self.organization_uuid = SecureRandom.uuid if self.organization_uuid.blank?
  end

  def should_generate_new_friendly_id?
    name_changed? || super
  end
end
