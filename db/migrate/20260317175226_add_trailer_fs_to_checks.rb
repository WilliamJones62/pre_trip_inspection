class AddTrailerFsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :front_clearance, :boolean
    add_column :checks, :front_panels, :boolean
    add_column :checks, :side_panels, :boolean
    add_column :checks, :side_dot, :boolean
    add_column :checks, :trailer_frame, :boolean
  end
end
