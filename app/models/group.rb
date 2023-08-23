class Group < ApplicationRecord
  has_one :groupprofile
  has_many :memberships
  has_many :users, through: :memberships
  require 'securerandom'
  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders]

  def slug_candidates
    attempts = 0
    slug_length = 4
    slug = SecureRandom.alphanumeric(slug_length)

    while Group.where(slug:).exists?
      attempts += 1
      slug_length += 1 if attempts > 10
      attempts = 0
      slug = SecureRandom.alphanumeric(slug_length)
    end

    slug
  end
end
