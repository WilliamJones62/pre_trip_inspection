class AddTfWheelsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tf_br_tires, :boolean
    add_column :checks, :tf_rims, :boolean
    add_column :checks, :tf_lugs, :boolean
    add_column :checks, :tf_hubs, :boolean
    add_column :checks, :tf_valves, :boolean
  end
end
