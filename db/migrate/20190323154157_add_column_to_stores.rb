class AddColumnToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :address, :string
    add_column :stores, :tel, :string
    add_column :stores, :name, :string
  end
end
