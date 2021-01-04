class CreateDrivingRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :driving_ranges do |t|
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :spot
      t.integer :location_id
      t.integer :user_id

      t.timestamps
    end
  end
end
