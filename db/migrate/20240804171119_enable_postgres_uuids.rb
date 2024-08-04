# frozen_string_literal: true

# This migration enables the use of UUID types within PostgreSQL
class EnablePostgresUuids < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto'
  end
end
