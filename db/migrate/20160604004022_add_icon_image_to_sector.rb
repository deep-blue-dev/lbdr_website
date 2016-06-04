class AddIconImageToSector < ActiveRecord::Migration[5.0]
  def change
    add_column :sectors, :icon_image, :string
  end
end
