# == Schema Information
#
# Table name: users
# Database name: primary
#
#  id                     :integer          not null, primary key
#  archived_at            :datetime
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
#  user_uuid              :text             not null
#  username               :text             not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#  index_users_on_user_uuid             (user_uuid) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
class User < ApplicationRecord
  # Include Devise user authentication modules. Others available are: :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  has_many :pages

  has_rich_text :profile
  has_one_attached :profile_picture do |attachable|
    attachable.variant :thumbnail, resize_to_limit: [ 200, 200 ], preprocessed: true
  end

  validates :name, :username, presence: true
  validates :username, uniqueness: true
  validate :profile_picture_is_a_picture

  has_paper_trail
  include Archivable
  before_create :assign_user_uuid

  extend FriendlyId
  friendly_id :slug_candidates



  def assign_user_uuid
    self.user_uuid = SecureRandom.uuid if self.user_uuid.blank?
  end

  def slug_candidates
    [
      :username,
      [ :username, :name ],
      [ :username, :name, :user_uuid ]
    ]
  end

  def should_generate_new_friendly_id?
    username_changed? || name_changed? || user_uuid_changed? || super
  end

  private

  def profile_picture_is_a_picture
    if profile_picture.attached? && !profile_picture.content_type.in?(%w[image/png image/jpeg image/gif])
      errors.add(:profile_picture, "must be in a photo format (png, jpeg, or gif)")
    end
  end
end
