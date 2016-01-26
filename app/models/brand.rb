class Brand < ApplicationRecord
  # belongs_to :sector
  has_attached_file :brand_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :brand_photo, content_type: /\Aimage\/.*\Z/
  has_attached_file :logo_for_brand, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo_for_brand, content_type: /\Aimage\/.*\Z/
end
