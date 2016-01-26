class AddSectorImageToSectors < ActiveRecord::Migration[5.0]
  def change
    add_column :sectors, :sector_photo_id, :string
  end
end
