class AddComponentsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :alternator, :boolean
    add_column :checks, :alternator_wires, :boolean
    add_column :checks, :water_pump, :boolean
    add_column :checks, :wp_hoses, :boolean
    add_column :checks, :belt, :boolean
    add_column :checks, :air_compressor, :boolean
    add_column :checks, :ac_hoses, :boolean
  end
end
