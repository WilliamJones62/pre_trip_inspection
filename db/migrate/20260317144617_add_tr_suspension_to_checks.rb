class AddTrSuspensionToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tr_leaf_spring_mounts, :boolean
    add_column :checks, :tr_leaf_springs, :boolean
    add_column :checks, :tr_u_bolts, :boolean
    add_column :checks, :tr_shock_absorbers, :boolean
  end
end
