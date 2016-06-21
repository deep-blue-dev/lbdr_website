class AddPaperclipPhotoToPostBanner < ActiveRecord::Migration[5.0]
  def change
    add_attachment :post_banners, :photo
  end
end
