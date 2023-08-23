class GroupProfile < ApplicationRecord
  has_many :groups
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged


end