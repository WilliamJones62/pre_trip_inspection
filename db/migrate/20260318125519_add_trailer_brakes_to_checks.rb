class AddTrailerBrakesToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :trailer_br_hoses, :boolean
    add_column :checks, :trailer_chambers, :boolean
    add_column :checks, :trailer_slacks, :boolean
    add_column :checks, :trailer_shoes, :boolean
    add_column :checks, :trailer_drums, :boolean
  end
end
