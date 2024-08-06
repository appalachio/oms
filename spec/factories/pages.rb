# frozen_string_literal: true

# == Schema Information
#
# Table name: pages
#
#  id           :uuid             not null, primary key
#  archived_at  :datetime
#  published_at :datetime
#  slug         :text
#  subtitle     :text
#  title        :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'faker'

FactoryBot.define do
  factory :page do
    title { Faker::Lorem.sentence }
    subtitle { Faker::Lorem.sentences.join(' ') }
    body { Faker::Lorem.paragraphs(number: 5, supplemental: true).join('\n\n') }
    published_at { Faker::Time.between(from: DateTime.now - 10, to: DateTime.now + 10) }
  end
end
