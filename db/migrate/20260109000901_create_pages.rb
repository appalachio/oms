class CreatePages < ActiveRecord::Migration[8.1]
  def change
    create_table :pages do |t|
      t.text :title, null: false
      t.text :subtitle

      t.text :page_type, null: false, default: :default
      t.json :page_extra_attributes

      t.text :slug, null: false
      t.text :page_uuid, null: false

      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :organization, null: false, foreign_key: true

      t.datetime :published_at
      t.datetime :archived_at
      t.timestamps
    end

    add_index :pages, :title
    add_index :pages, :slug, unique: true
    add_index :pages, :page_uuid, unique: true
  end
end
