class AddTrBrakesToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tr_br_hosess, :boolean
    add_column :checks, :tr_chambers, :boolean
    add_column :checks, :tr_slacks, :boolean
    add_column :checks, :tr_shoes, :boolean
    add_column :checks, :tr_drums, :boolean
  end
end
