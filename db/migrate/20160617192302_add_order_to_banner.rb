class AddOrderToBanner < ActiveRecord::Migration[5.0]
  def change
    add_column :banners, :order, :integer
  end
end
