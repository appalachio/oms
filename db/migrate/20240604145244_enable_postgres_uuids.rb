# frozen_string_literal: true

# This migration enables the use of UUID ID types with Postgresql
class EnablePostgresUuids < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto'
  end
end
