class AddSeoFieldToLanding < ActiveRecord::Migration[5.0]
  def change
    add_column :landings, :title, :string
    add_column :landings, :description, :text
    add_column :landings, :facebook_image, :string
    add_column :landings, :twitter_image, :string
  end
end
