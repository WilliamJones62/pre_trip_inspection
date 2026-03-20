class AddTrWheelsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tr_tires, :boolean
    add_column :checks, :tr_rims, :boolean
    add_column :checks, :tr_lugs, :boolean
    add_column :checks, :tr_hubs, :boolean
    add_column :checks, :tr_valves, :boolean
    add_column :checks, :tr_muds, :boolean
  end
end
