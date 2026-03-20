class AddAbsLightToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :abs_light, :boolean
  end
end
