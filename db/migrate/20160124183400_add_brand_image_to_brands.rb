class AddBrandImageToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :brand_image_id, :string
  end
end
