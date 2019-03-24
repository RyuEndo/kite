class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.integer :store_id
      t.integer :user_id

      t.timestamps
    end
  end
end
