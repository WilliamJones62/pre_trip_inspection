class AddTractorAirbagsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tractor_airbags, :boolean
  end
end
