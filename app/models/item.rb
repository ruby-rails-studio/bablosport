class Item < ApplicationRecord
  mount_uploader :icon, ItemIconUploader
  belongs_to :category
  has_many :landings
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
