class AddPaperclipPhotoToSectorBanner < ActiveRecord::Migration[5.0]
  def change
    add_attachment :sector_banners, :photo
  end
end
