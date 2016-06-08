class AddPaperclipGroupPhotoToGroupBanner < ActiveRecord::Migration[5.0]
  def change
    add_attachment :group_banners, :photo
  end
end
