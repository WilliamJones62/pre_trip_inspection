class AddTrailerWheelsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :trailer_tires, :boolean
    add_column :checks, :trailer_rims, :boolean
    add_column :checks, :trailer_lugs, :boolean
    add_column :checks, :trailer_hubs, :boolean
    add_column :checks, :trailer_valves, :boolean
    add_column :checks, :trailer_muds, :boolean
  end
end
