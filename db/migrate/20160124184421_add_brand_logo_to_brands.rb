class AddBrandLogoToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :brand_logo_id, :string
  end
end
