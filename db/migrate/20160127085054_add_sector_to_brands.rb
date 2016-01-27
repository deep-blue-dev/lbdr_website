class AddSectorToBrands < ActiveRecord::Migration[5.0]
  def change
    add_reference :brands, :sector, index: true, foreign_key: true
  end
end
