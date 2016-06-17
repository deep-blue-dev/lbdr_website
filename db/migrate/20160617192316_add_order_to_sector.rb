class AddOrderToSector < ActiveRecord::Migration[5.0]
  def change
    add_column :sectors, :order, :integer
  end
end
