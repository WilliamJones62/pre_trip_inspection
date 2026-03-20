class AddTanksToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tankss, :boolean
    add_column :checks, :chain, :boolean
    add_column :checks, :exhaust, :boolean
    add_column :checks, :frame, :boolean
    add_column :checks, :driveshaft, :boolean
    add_column :checks, :ds_universal_joint, :string
  end
end
