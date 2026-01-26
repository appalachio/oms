class CreateOrganizations < ActiveRecord::Migration[8.1]
  def change
    create_table :organizations do |t|
      t.text :name
      t.text :slug
      t.text :contact_email
      t.text :domain
      t.text :subdomain
      t.datetime :archived_at
      t.text :website_theme

      t.timestamps
    end
  end
end
