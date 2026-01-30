# == Schema Information
#
# Table name: organizations
# Database name: primary
#
#  id                :integer          not null, primary key
#  archived_at       :datetime
#  domain            :text
#  name              :text             not null
#  organization_uuid :text             not null
#  slug              :text             not null
#  subdomain         :text
#  website_theme     :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_organizations_on_name               (name) UNIQUE
#  index_organizations_on_organization_uuid  (organization_uuid) UNIQUE
#  index_organizations_on_slug               (slug) UNIQUE
#
module OrganizationsHelper
end
