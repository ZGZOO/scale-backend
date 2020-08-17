class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.decimal :weight, precision: 8, scale: 2
      t.string :unit
      t.date :entry_date
      t.integer :user_id

      t.timestamps
    end
  end
end
