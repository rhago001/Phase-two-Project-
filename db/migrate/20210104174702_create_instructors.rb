class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :location_id
      t.string :img_url
      t.text :bio

      t.timestamps
    end
  end
end
