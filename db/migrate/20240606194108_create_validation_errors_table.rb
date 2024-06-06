# frozen_string_literal: true

# This migration enables storing validation errors made by users
class CreateValidationErrorsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :validation_errors, id: :uuid do |t|
      t.string :invalid_model_name, index: true
      t.uuid :invalid_model_id
      t.string :action, index: true
      t.json :details
      t.timestamps null: false
    end
  end
end
