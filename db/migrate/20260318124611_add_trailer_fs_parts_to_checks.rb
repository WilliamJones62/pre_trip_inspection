class AddTrailerFsPartsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :gear, :boolean
    add_column :checks, :floor, :boolean
    add_column :checks, :cross, :boolean
    add_column :checks, :trailer_air_lines, :boolean
  end
end
