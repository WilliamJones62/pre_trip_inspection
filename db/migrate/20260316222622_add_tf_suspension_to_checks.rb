class AddTfSuspensionToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tf_leaf_spring_mounts, :boolean
    add_column :checks, :tf_leaf_springs, :boolean
    add_column :checks, :tf_u_bolts, :boolean
    add_column :checks, :tf_shock_absorbers, :boolean
  end
end
