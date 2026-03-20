class AddTrailerRearToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :rear_clearance, :boolean
    add_column :checks, :rear_dot, :string
    add_column :checks, :trailer_handles, :boolean
    add_column :checks, :trailer_doors, :boolean
    add_column :checks, :trailer_lights, :boolean
    add_column :checks, :bumper, :boolean
  end
end
