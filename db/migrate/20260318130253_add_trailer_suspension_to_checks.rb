class AddTrailerSuspensionToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :trailer_leaf_spring_mounts, :boolean
    add_column :checks, :trailer_leaf_springs, :boolean
    add_column :checks, :trailer_u_bolts, :boolean
    add_column :checks, :trailer_shock_absorbers, :boolean
    add_column :checks, :trailer_airbags, :boolean
  end
end
