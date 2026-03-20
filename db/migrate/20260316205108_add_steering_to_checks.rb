class AddSteeringToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :steering_shaft, :boolean
    add_column :checks, :ss_universal_joint, :boolean
    add_column :checks, :steering_gearbox, :boolean
    add_column :checks, :sg_hoses, :boolean
    add_column :checks, :pitman_arm, :boolean
  end
end
