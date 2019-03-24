class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.datetime :date
      t.integer :money
      t.integer :people
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
