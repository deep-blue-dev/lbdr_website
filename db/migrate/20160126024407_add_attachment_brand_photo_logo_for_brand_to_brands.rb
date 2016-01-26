class AddAttachmentBrandPhotoLogoForBrandToBrands < ActiveRecord::Migration
  def self.up
    change_table :brands do |t|
      t.attachment :brand_photo
      t.attachment :logo_for_brand
    end
  end

  def self.down
    remove_attachment :brands, :brand_photo
    remove_attachment :brands, :logo_for_brand
  end
end
