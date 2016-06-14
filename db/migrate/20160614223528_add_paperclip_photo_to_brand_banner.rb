class AddPaperclipPhotoToBrandBanner < ActiveRecord::Migration[5.0]
  def change
    add_attachment :brand_banners, :photo
  end
end
