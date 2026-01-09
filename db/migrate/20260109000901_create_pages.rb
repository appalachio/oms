class CreatePages < ActiveRecord::Migration[8.1]
  def change
    create_table :pages do |t|
      t.text :title
      t.text :subtitle
      t.text :slug
      t.text :page_uuid
      t.text :page_type
      t.json :page_extra_attributes
      t.datetime :published_at
      t.datetime :archived_at

      t.timestamps
    end
  end
end
