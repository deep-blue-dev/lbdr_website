class AddAttachmentSectorPhotoToSectors < ActiveRecord::Migration
  def self.up
    change_table :sectors do |t|
      t.attachment :sector_photo
    end
  end

  def self.down
    remove_attachment :sectors, :sector_photo
  end
end
