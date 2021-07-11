class AddOrderToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :order, :int
  end
end
