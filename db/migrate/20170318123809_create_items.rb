class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :ref_url
      t.string :cover
      t.string :icon
      t.boolean :is_published, default: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
