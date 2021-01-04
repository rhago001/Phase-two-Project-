class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :date
      t.string :time
      t.integer :instructor_id
      t.integer :user_id
      t.integer :location_id
      t.string :skill_level
      t.string :hand_position

      t.timestamps
    end
  end
end
