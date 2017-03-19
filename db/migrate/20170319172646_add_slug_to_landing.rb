class AddSlugToLanding < ActiveRecord::Migration[5.0]
  def change
    add_column :landings, :slug, :string
  end
end
