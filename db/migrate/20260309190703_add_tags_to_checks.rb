class AddTagsToChecks < ActiveRecord::Migration[8.1]
  def change
    add_column :checks, :truck_tag, :string
    add_column :checks, :trailer_tag, :string
  end
end
