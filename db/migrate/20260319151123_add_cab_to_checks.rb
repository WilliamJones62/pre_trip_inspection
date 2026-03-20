class AddCabToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :chocks, :boolean
    add_column :checks, :seat_belt, :boolean
    add_column :checks, :cab_abs, :boolean
    add_column :checks, :air_govenor, :boolean
    add_column :checks, :leak, :boolean
    add_column :checks, :low_air, :boolean
    add_column :checks, :pop_out, :boolean
    add_column :checks, :trailer_brake, :boolean
    add_column :checks, :tractor_brake, :boolean
    add_column :checks, :service_brake, :boolean
  end
end
