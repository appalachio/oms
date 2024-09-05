# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  admin                  :boolean          default(FALSE), not null
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  name                   :text             not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  slug                   :text             not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  username               :text             not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_name                  (name) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
class User < ApplicationRecord
  self.implicit_order_column = 'created_at'

  has_rich_text :profile
  has_one_attached :profile_picture

  validates :name, :username, :email, presence: true

  # Include default devise modules. Others available are: :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  # Track and store changes to users
  # Due to ActionText and Active Storage touching a model on creation,
  # which creates an unnecessary empty version, skip storing a new version on touch.
  # https://github.com/paper-trail-gem/paper_trail/issues/1465
  has_paper_trail on: %i[create update destroy]

  # Display users by their name (and maybe username), not their ID
  extend FriendlyId
  friendly_id :slug_candidates

  # Try to use the user's name for slug first, if thats nonunique use name and username, then finally append a UUID
  def slug_candidates
    [
      :name,
      %i[name username]
    ]
  end

  def should_generate_new_friendly_id?
    name_changed? || username_changed?
  end
end
