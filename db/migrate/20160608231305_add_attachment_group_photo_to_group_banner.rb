class AddAttachmentGroupPhotoToGroupBanner < ActiveRecord::Migration[5.0]
  def self.up
    change_table :group_banners do |t|
      t.attachment :group_photo
    end
  end

  def self.down
    remove_attachment :group_banners, :group_photo
  end
end
