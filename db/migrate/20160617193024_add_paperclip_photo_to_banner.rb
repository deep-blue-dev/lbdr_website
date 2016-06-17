class AddPaperclipPhotoToBanner < ActiveRecord::Migration[5.0]
  def change
    add_attachment :banners, :photo
  end
end
