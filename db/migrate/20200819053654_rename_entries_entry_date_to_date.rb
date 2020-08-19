class RenameEntriesEntryDateToDate < ActiveRecord::Migration[6.0]
  def change
    rename_column :entries, :entry_date, :date
  end
end
