class Brand < ApplicationRecord
  belongs_to :sector

# Brand Photo File Uploads
  has_attached_file :brand_photo,
    styles: { big: "1920x500#", medium: "300x250>", thumb: "200x150#" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :brand_photo,
    content_type: /\Aimage\/.*\Z/

  # Brand Logo File Uploads
  has_attached_file :logo_for_brand,
    styles: { thumb: "200x150>" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo_for_brand,
    content_type: /\Aimage\/.*\Z/
end
