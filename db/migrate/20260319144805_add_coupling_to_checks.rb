class AddCouplingToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :coupling_air_lines, :boolean
    add_column :checks, :gladhands, :boolean
    add_column :checks, :coupling_electric_lines, :boolean
    add_column :checks, :apron, :boolean
    add_column :checks, :skid_plate, :boolean
    add_column :checks, :pivot_pin, :boolean
    add_column :checks, :lock_release, :boolean
    add_column :checks, :platform, :boolean
    add_column :checks, :kingpin, :boolean
  end
end
