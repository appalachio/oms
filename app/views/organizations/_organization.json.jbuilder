json.extract! organization, :id, :name, :slug, :about, :subdomain, :archived_at, :created_at, :updated_at
json.url organization_url(organization, format: :json)
json.about organization.about.to_s
