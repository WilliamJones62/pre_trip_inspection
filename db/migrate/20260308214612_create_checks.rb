class CreateChecks < ActiveRecord::Migration[8.1]
  def change
    create_table :checks do |t|
      t.string :origin
      t.string :destionation
      t.date :trip_date
      t.boolean :truck_clearance_lights
      t.boolean :headlights
      t.boolean :level
      t.boolean :leaks
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
