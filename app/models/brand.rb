class Brand < ApplicationRecord
  # belongs_to :sector
  has_attached_file :brand_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :brand_image, content_type: /\Aimage\/.*\Z/
  has_attached_file :brand_logo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :brand_logo, content_type: /\Aimage\/.*\Z/
end
