# Enables the pgcrypto module so we can use UUIDs as the primary key type
class EnablePostgresUuids < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto'
  end
end
