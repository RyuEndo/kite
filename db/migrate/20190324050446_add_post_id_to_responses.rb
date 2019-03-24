class AddPostIdToResponses < ActiveRecord::Migration[5.1]
  def change
    add_column :responses, :post_id, :integer
  end
end
