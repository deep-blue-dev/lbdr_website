class AddPhotoToGroupBanner < ActiveRecord::Migration[5.0]
  def change
    add_column :group_banners, :group_photo_id, :string
  end
end
