class ChangeDateToBeDatetimeInEntries < ActiveRecord::Migration[6.0]
  def up
    change_column :entries, :date, :datetime
  end

  def down
    change_column :entries, :date, :date
  end
end
