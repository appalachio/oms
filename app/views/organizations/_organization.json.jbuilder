json.extract! organization, :id, :name, :slug, :about, :contact_email, :domain, :subdomain, :archived_at, :website_theme, :created_at, :updated_at
json.url organization_url(organization, format: :json)
json.about organization.about.to_s
