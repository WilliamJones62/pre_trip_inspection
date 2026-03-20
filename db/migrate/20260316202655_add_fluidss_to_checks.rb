class AddFluidssToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :coolant_reservoir, :boolean
    add_column :checks, :cr_hoses, :boolean
    add_column :checks, :oil_stick, :boolean
    add_column :checks, :steering_reservoir, :boolean
    add_column :checks, :sr_hoses, :boolean
  end
end
