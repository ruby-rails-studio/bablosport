class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :cover
      t.boolean :root, default: true
      t.integer :root_id

      t.timestamps
    end
  end
end
