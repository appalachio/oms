# frozen_string_literal: true

# This migration and CreateVersionAssociations provide the necessary
# schema for tracking associations.
class AddTransactionIdColumnToVersions < ActiveRecord::Migration[7.1]
  def self.up
    add_column :versions, :transaction_id, :integer
    safety_assured { add_index :versions, [:transaction_id] }
  end

  def self.down
    remove_index :versions, [:transaction_id]
    remove_column :versions, :transaction_id
  end
end
