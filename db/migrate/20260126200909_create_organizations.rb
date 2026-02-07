class CreateOrganizations < ActiveRecord::Migration[8.1]
  def change
    create_table :organizations do |t|
      t.text :name, null: false
      t.text :slug, null: false
      t.text :organization_uuid, null: false

      t.text :subdomain, null: false

      t.datetime :archived_at
      t.timestamps
    end

    add_index :organizations, :name, unique: true
    add_index :organizations, :slug, unique: true
    add_index :organizations, :organization_uuid, unique: true
    add_index :organizations, :subdomain, unique: true
  end
end
