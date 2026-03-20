class AddTRearToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :tr_lights, :boolean
    add_column :checks, :space, :boolean
  end
end
