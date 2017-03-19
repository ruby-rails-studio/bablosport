class Landing < ApplicationRecord
  belongs_to :item
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
