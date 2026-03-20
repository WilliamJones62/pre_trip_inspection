class AddNotesToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :notes, :text
  end
end
