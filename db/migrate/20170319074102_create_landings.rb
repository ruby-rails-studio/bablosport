class CreateLandings < ActiveRecord::Migration[5.0]
  def change
    create_table :landings do |t|
      t.string :name
      t.references :item, foreign_key: true
      t.text :code
      t.string :css_file
      t.string :js_file
      t.boolean :is_published, default: true

      t.timestamps
    end
  end
end
