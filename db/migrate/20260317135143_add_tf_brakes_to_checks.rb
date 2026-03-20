class AddTfBrakesToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tf_br_hosess, :boolean
    add_column :checks, :tf_chambers, :boolean
    add_column :checks, :tf_slacks, :boolean
    add_column :checks, :tf_shoes, :boolean
    add_column :checks, :tf_drums, :boolean
  end
end
