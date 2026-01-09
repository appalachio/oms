json.extract! page, :id, :title, :subtitle, :slug, :page_uuid, :page_type, :body, :page_extra_attributes, :published_at, :archived_at, :created_at, :updated_at
json.url page_url(page, format: :json)
json.body page.body.to_s
