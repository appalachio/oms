# frozen_string_literal: true

# == Schema Information
#
# Table name: pages
#
#  id           :uuid             not null, primary key
#  archived_at  :datetime
#  published_at :datetime
#  slug         :text             not null
#  subtitle     :text
#  title        :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Page < ApplicationRecord
  self.implicit_order_column = 'published_at'

  has_rich_text :body

  # Display pages by their title (and maybe subtitle), not their ID
  extend FriendlyId
  friendly_id :slug_candidates

  validates :title, presence: true

  # Try to use the page's title for slug first, if thats nonunique use title and subtitle, then finally append a UUID
  def slug_candidates
    [
      :title,
      %i[title subtitle]
    ]
  end

  def should_generate_new_friendly_id?
    title_changed? || subtitle_changed?
  end
end
