class AddDoorsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :brackets, :boolean
    add_column :checks, :tractor_handles, :boolean
    add_column :checks, :tractor_doors, :boolean
    add_column :checks, :door_seals, :boolean
    add_column :checks, :door_steps, :boolean
  end
end
