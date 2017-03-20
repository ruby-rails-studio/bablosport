class Landing < ApplicationRecord
  belongs_to :item
  mount_uploader :css_file, CssUploader
  mount_uploader :js_file,  JsUploader

  extend FriendlyId
  friendly_id :slug, use: :slugged
end
