# frozen_string_literal: true

# This migration creates the content management system style pages
class CreatePages < ActiveRecord::Migration[7.1]
  def change
    create_table :pages, id: :uuid do |t|
      t.text :title, null: false
      t.text :slug, null: false
      t.text :subtitle

      t.datetime :published_at
      t.datetime :archived_at
      t.timestamps
    end
  end
end
