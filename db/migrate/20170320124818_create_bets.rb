class CreateBets < ActiveRecord::Migration[5.0]
  def change
    create_table :bets do |t|
      t.decimal :value
      t.decimal :gain
      t.references :user, foreign_key: true
      t.text :description
      t.string :event
      t.string :event_type

      t.boolean :is_finish, default: false

      t.timestamps
    end
  end
end
